using Symbioz.ORM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Symbioz.World.Records.Characters
{
    [Table("CharactersMerchantsItems", true)]
    class CharacterMerchantItemRecord : ITable
    {
        public static List<CharacterMerchantItemRecord> CharactersMerchantsItems = new List<CharacterMerchantItemRecord>();

        [Primary]
        public int Id;
        public int CharacterId;
        public int ItemUID;
        public uint Price;
        public uint Quantity;

        public CharacterMerchantItemRecord(int id, int characterId, int itemUID, uint price, uint quantity)
        {
            this.Id = id;
            this.CharacterId = characterId;
            this.ItemUID = itemUID;
            this.Price = price;
            this.Quantity = quantity;
        }
        public static List<CharacterMerchantItemRecord> GetCharacterItems(long CharacterId)
        {
            return CharacterMerchantItemRecord.CharactersMerchantsItems.FindAll(item => item.CharacterId == CharacterId);
        }

        public static bool InMerchantList(int itemUID)
        {
            return CharacterMerchantItemRecord.CharactersMerchantsItems.Any(item => item.ItemUID == itemUID);
        }

        public static uint GetQuantityFromUID(int itemUID)
        {
            var item = CharacterMerchantItemRecord.CharactersMerchantsItems.Find(x => x.ItemUID == itemUID);
            return item != null ? item.Quantity : 0;
        }

    }
}
