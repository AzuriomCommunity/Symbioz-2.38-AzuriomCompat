using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Symbioz.Core;
using Symbioz.Core.DesignPattern.StartupEngine;

namespace Symbioz.World.Modules
{
    class Azlink
    {
        static Logger logger = new Logger();
        [StartupInvoke("Azlink", StartupInvokePriority.Modules)]
        public static void Initialize()
        {
            logger.Alert("Azlink Started! ");
        }

    }
}
