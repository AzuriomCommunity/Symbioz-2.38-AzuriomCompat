using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Symbioz.Core;
using Symbioz.Protocol.Enums;
using Symbioz.Protocol.Messages;
using Symbioz.Protocol.Types;
using Symbioz.World.Models.Entities;
using Symbioz.World.Network;
using Symbioz.World.Records.Characters;

namespace Symbioz.World.Models.Exchanges
{
    class ShopStockExchange : Exchange
    {
        

        public ShopStockExchange(Character character) : base(character)
        {
            
        }

        public override ExchangeTypeEnum ExchangeType
        {
            get { return ExchangeTypeEnum.SHOP_STOCK; }
        }

        public override DialogTypeEnum DialogType
        {
            get { return DialogTypeEnum.DIALOG_EXCHANGE; }
        }

        public override void MoveItem(uint uid, int quantity)
        {
            if (CharacterMerchantItemRecord.InMerchantList(uid, this.Character.Id))
            {
                var m_itemsList = CharacterMerchantItemRecord.GetCharacterItems(this.Character.Id);
                var m_item = m_itemsList.Find(item => item.UId == uid);
                
                if(m_item.Quantity + quantity <= 0)
                {
                    CharacterMerchantItemRecord.CharactersMerchantsItems.Remove(m_item);
                    var inv_item = this.Character.Inventory.GetItem(uid);

                    if(inv_item == null)
                        this.Character.Inventory.AddItem(m_item.ToCharacterItemRecord());
                    else inv_item.Quantity = (uint)(inv_item.Quantity - quantity);

                    this.Character.Client.Send(new ExchangeShopStockMovementRemovedMessage(m_item.UId));
                    this.Character.Inventory.Refresh();

                }
                else
                {
                    m_item.Quantity = (uint)(m_item.Quantity + quantity);
                    var inv_item = this.Character.Inventory.GetItem(uid);
                    if (inv_item == null)
                    {
                        
                        this.Character.Inventory.AddItem(m_item.ToCharacterItemRecord());
                        this.Character.Client.Send(new ExchangeShopStockMovementUpdatedMessage(new ObjectItemToSell(m_item.GId, m_item.GetObjectEffects(), m_item.UId, (uint)quantity, m_item.Price)));
                        this.Character.Inventory.Refresh();

                    }
                    else
                    {
                        var x = 1; // TODO: item is in inventory, and in stockshop, but delete only some item, not all
                    }
                }

            }
            
        }

        public void MoveItemPriced(uint uid, uint quantity, uint price)
        {
            var c_item = this.Character.Inventory.GetItem(uid);

            this.Character.Inventory.RemoveItem(uid, quantity);
            var item = CharacterMerchantItemRecord.CharactersMerchantsItems.Find(it => it.UId == uid && it.CharacterId == this.Character.Id);
            if (item == null)
            {
                item = new CharacterMerchantItemRecord(c_item, quantity, price);
                CharacterMerchantItemRecord.CharactersMerchantsItems.Add(item);
            }else {
                item = CharacterMerchantItemRecord.CharactersMerchantsItems.Find(it => it.UId == uid && it.CharacterId == this.Character.Id && it.Price == price);
                if (item == null)
                {
                    item = new CharacterMerchantItemRecord(c_item.CloneWithoutUID(), this.Character.Id, price) ;
                    item.Quantity = quantity;
                    CharacterMerchantItemRecord.CharactersMerchantsItems.Add(item);
                }
                else
                {
                    item.Quantity += quantity;
                }
            }
            
            this.Character.Client.Character.Inventory.Refresh();
            this.Character.Client.Send(new ExchangeShopStockMovementUpdatedMessage(new ObjectItemToSell(item.GId, item.GetObjectEffects(), item.UId, item.Quantity, item.Price)));
        }

        public override void MoveKamas(int quantity)
        {
            throw new NotImplementedException();
        }

        public override void Open()
        {
            var merchant_items = CharacterMerchantItemRecord.GetCharacterItems(this.Character.Id);

            var ItemsList = new List<ObjectItemToSell>();

            foreach (var m_item in merchant_items)
            {
                    ItemsList.Add(new ObjectItemToSell(m_item.GId, m_item.GetObjectEffects(), m_item.UId, (uint)m_item.Quantity, (uint)m_item.Price));
            }
            
            Character.Client.Send(new ExchangeShopStockStartedMessage(ItemsList.ToArray<ObjectItemToSell>()));
        }

        public override void Ready(bool ready, ushort step)
        {
            throw new NotImplementedException();
        }

    }
}
