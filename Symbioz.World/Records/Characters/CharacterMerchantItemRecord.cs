using Symbioz.ORM;
using Symbioz.World.Models.Effects;
using Symbioz.World.Models.Items;
using Symbioz.World.Providers.Items;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Symbioz.World.Records.Characters
{
    [Table("CharactersMerchantsItems"), Resettable]
    class CharacterMerchantItemRecord : AbstractItem, ITable
    {
        public static List<CharacterMerchantItemRecord> CharactersMerchantsItems = new List<CharacterMerchantItemRecord>();

        [Update]
        public long CharacterId;
        [Update]
        public uint Price;

        public CharacterMerchantItemRecord(long characterId, uint price, uint uid, ushort gid, byte position,
            uint quantity, List<Effect> effects, ushort appearanceId)
        {
            this.UId = uid;
            this.GId = gid;
            this.Position = position;
            this.CharacterId = characterId;
            this.Quantity = quantity;
            this.Effects = effects;
            this.AppearanceId = appearanceId;
            this.Price = price;
        }

        public CharacterMerchantItemRecord (CharacterItemRecord item,uint quantity, uint price)
        {
            this.UId = ItemUIdPopper.PopUID();
            this.GId = item.GId;
            this.Position = item.Position;
            this.CharacterId = item.CharacterId;
            this.Quantity = quantity;
            this.Effects = item.Effects;
            this.AppearanceId = item.AppearanceId;
            this.Price = price;

        }

        public CharacterMerchantItemRecord(AbstractItem new_price_same_item, long CharacterId, uint price)
        {
            this.UId = new_price_same_item.UId;
            this.GId = new_price_same_item.GId;
            this.Position = new_price_same_item.Position;
            this.CharacterId = CharacterId;
            this.Quantity = new_price_same_item.Quantity;
            this.Effects = new_price_same_item.Effects;
            this.AppearanceId = new_price_same_item.AppearanceId;
            this.Price = price;
            Price = price;
        }

        public static List<CharacterMerchantItemRecord> GetCharacterItems(long CharacterId)
        {
            return CharacterMerchantItemRecord.CharactersMerchantsItems.FindAll(item => item.CharacterId == CharacterId);
        }

        public static bool InMerchantList(uint itemUID, long CharactedId)
        {
            return CharacterMerchantItemRecord.CharactersMerchantsItems.Any(item => item.UId == itemUID && item.CharacterId == CharactedId);
        }

        public static uint GetQuantityFromUID(int itemUID)
        {
            var item = CharacterMerchantItemRecord.CharactersMerchantsItems.Find(x => x.UId == itemUID);
            return item != null ? item.Quantity : 0;
        }

        public override AbstractItem CloneWithUID()
        {
            return new CharacterMerchantItemRecord(CharacterId, Price, UId, GId, Position, Quantity, new List<Effect>(Effects), AppearanceId);
        }

        public override AbstractItem CloneWithoutUID()
        {
            return new CharacterMerchantItemRecord(CharacterId, Price, ItemUIdPopper.PopUID(), GId, Position, Quantity, new List<Effect>(Effects), AppearanceId);
        }

        public CharacterItemRecord ToCharacterItemRecord()
        {
            return new CharacterItemRecord(CharacterId, UId, GId, Position, Quantity, Effects, AppearanceId);
        }
    }
}
