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
            if(quantity < 0)
            {
                CharacterMerchantItemRecord item = CharacterMerchantItemRecord.CharactersMerchantsItems.Find(x => x.UId == uid);
                if (item == null)
                {
                    Character.OnExchangeError(ExchangeErrorEnum.SELL_ERROR);
                    return;
                }                   

                if (item.Quantity <= Math.Abs(quantity)) // on retire tout les items
                {
                    item.RemoveElement();
                    CharacterMerchantItemRecord.CharactersMerchantsItems.Remove(item);
                    Character.Inventory.AddItem(item.ToCharacterItemRecord());
                    Character.Client.Send(new ExchangeShopStockMovementRemovedMessage(item.UId));
                }
                else
                {
                    item.Quantity -= (uint) Math.Abs(quantity);
                    item.UpdateElement();
                    CharacterItemRecord inv_item = item.ToCharacterItemRecord();
                    inv_item.Quantity = (uint)Math.Abs(quantity);
                    this.Character.Inventory.AddItem(inv_item);
                    this.Character.Client.Send(new ExchangeShopStockMovementUpdatedMessage(new ObjectItemToSell(item.GId, item.GetObjectEffects(), item.UId, item.Quantity, item.Price)));
                }

            }
            
        }

        public void MoveItemPriced(uint uid, uint quantity, uint price)
        {
            CharacterItemRecord c_item = Character.Inventory.GetItem(uid);
            if (c_item != null && c_item.Quantity >= quantity && c_item.CanBeExchanged())
            {
                this.Character.Inventory.RemoveItem(uid, quantity);

                CharacterMerchantItemRecord selledItem = new CharacterMerchantItemRecord(c_item, quantity, price);
                selledItem.AddElement();
                this.Character.Client.Send(new ExchangeShopStockMovementUpdatedMessage(new ObjectItemToSell(selledItem.GId, selledItem.GetObjectEffects(), selledItem.UId, selledItem.Quantity, selledItem.Price)));
            }
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

        public void ModifyItemPriced(uint uid, int quantity, uint price)
        {
            CharacterMerchantItemRecord item = CharacterMerchantItemRecord.CharactersMerchantsItems.Find(x => x.UId == uid);

            if (item != null)
            {
                if(price > 0)
                    item.Price = price;
                item.UpdateElement();
                this.Character.Client.Send(new ExchangeShopStockMovementUpdatedMessage(new ObjectItemToSell(item.GId, item.GetObjectEffects(), item.UId, item.Quantity, item.Price)));
            }
            else
            {
                Character.OnExchangeError(ExchangeErrorEnum.SELL_ERROR);
            }
        }

    }
}
