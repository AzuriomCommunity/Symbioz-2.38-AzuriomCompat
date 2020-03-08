using Symbioz.ORM;
using Symbioz.Protocol.Enums;
using Symbioz.Protocol.Selfmade.Types;
using Symbioz.Protocol.Types;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Symbioz.Auth.Records
{
    [Table("dofus_worldservers")]
    public class ServerRecord : ITable
    {
        public static List<ServerRecord> dofus_worldservers = new List<ServerRecord>();

        [Primary]
        public ushort Id;

        [Update]
        public string Name;

        [Ignore]
        public ServerStatusEnum Status;
        
        [Update]
        public sbyte Type;

        [Update]
        public string Host;

        [Update]
        public int Port;

        public ServerRecord(ushort id,string name,sbyte type,string host,int port)
        {
            this.Id = id;
            this.Name = name;
            this.Status = ServerStatusEnum.OFFLINE;
            this.Type = type;
            this.Host = host;
            this.Port = port;
        }
        public GameServerInformations GetServerInformations(AccountData account)
        {
            return new GameServerInformations(Id, Type, (sbyte)Status, 0, true,ServerCharacterRecord.GetCharactersCount(Id,account.Id) ,account.CharacterSlots, 0);
        }
        public static GameServerInformations[] GetGameServerInformations(AccountData account)
        {
            return dofus_worldservers.ConvertAll<GameServerInformations>(x => x.GetServerInformations(account)).ToArray();
        }
        public static ServerRecord GetWorldServer(ushort id)
        {
            return dofus_worldservers.Find(x => x.Id == id);
        }
        public static void SetServerStatus(ushort serverId,ServerStatusEnum status)
        {
            var server = GetWorldServer(serverId);
            if (server != null)
              server.Status = status;
            else
            {
                server = DatabaseReader<ServerRecord>.ReadFirst("`Id` = " + serverId);
                server.Status = status;
                dofus_worldservers.Add(server);
            }
            
            //TODO : On first launch server == null
        }
        public static void AddWorldServer(ServerRecord server)
        {
            server.AddInstantElement<ServerRecord>(true);
        }
        public static bool CanBeAdded(ServerRecord server)
        {
            var record = dofus_worldservers.Find(x => x.Id == server.Id);
            if (record != null)
                return false;
            record = dofus_worldservers.Find(x => x.Host == server.Host && x.Port == server.Port);
            if (record != null)
                return false;

            return true;
        }
    }
}
