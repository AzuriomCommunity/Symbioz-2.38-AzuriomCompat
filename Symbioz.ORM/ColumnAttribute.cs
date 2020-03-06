using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Symbioz.ORM
{
    [System.AttributeUsage(System.AttributeTargets.Field | System.AttributeTargets.Property, AllowMultiple = false)]
    public class ColumnAttribute : Attribute
    {
        public string Name {
            get
            {
                return this.Name;
            }
            set
            {
                this.Name = value;
            }
        }

        public ColumnAttribute(string name)
        {
            this.Name = name;
        }

        
    }
}
