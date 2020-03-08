using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
            get { return ExchangeTypeEnum.STORAGE; }
        }

        public override DialogTypeEnum DialogType
        {
            get { return DialogTypeEnum.DIALOG_EXCHANGE; }
        }

        public override void MoveItem(uint uid, int quantity)
        {
            throw new NotImplementedException();
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

                var item = CharacterItemRecord.GetItemByUID(m_item.ItemUID);
                if (item != null)
                    ItemsList.Add(new ObjectItemToSell(item.GId, item.GetObjectEffects(), item.UId, (uint)m_item.Quantity, (uint)m_item.Price));
            }
            
            Character.Client.Send(new ExchangeShopStockStartedMessage(ItemsList.ToArray<ObjectItemToSell>()));
        }

        public override void Ready(bool ready, ushort step)
        {
            throw new NotImplementedException();
        }

    }
}
