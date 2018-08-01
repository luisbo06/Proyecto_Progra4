using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.TipoTarifa
{
    public class cls_TipoTarifa
    {
        private int _IdTipoTarifa;
        private int _IdEspacio;
        private string _DescTipoTarifa;

        public int IdTipoTarifa
        {
            get
            {
                return _IdTipoTarifa;
            }

            set
            {
                _IdTipoTarifa = value;
            }
        }

        public int IdEspacio
        {
            get
            {
                return _IdEspacio;
            }

            set
            {
                _IdEspacio = value;
            }
        }

        public string DescTipoTarifa
        {
            get
            {
                return _DescTipoTarifa;
            }

            set
            {
                _DescTipoTarifa = value;
            }
        }
    }
}
