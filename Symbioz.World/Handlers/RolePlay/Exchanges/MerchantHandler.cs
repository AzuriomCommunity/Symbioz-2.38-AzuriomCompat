using SSync.Messages;
using Symbioz.Protocol.Messages;
using Symbioz.Protocol.Types;
using Symbioz.World.Models.Exchanges;
using Symbioz.World.Network;
using Symbioz.World.Records.Characters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Symbioz.World.Handlers.RolePlay.Exchanges
{
    class MerchantHandler
    {
        
        [MessageHandler]
        public static void HandleExchangeRequestOnShopStockMessage(ExchangeRequestOnShopStockMessage message, WorldClient client)
        {           
            client.Character.OpenShopStockExchange();           
        }

    }
}
