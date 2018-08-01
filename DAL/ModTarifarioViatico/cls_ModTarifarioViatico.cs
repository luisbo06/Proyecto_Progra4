using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.ModTarifarioViatico
{
    public class cls_ModTarifarioViatico
    {
        private int _IdModTarifa;
        private int _CodProvincia;
        private int _CodCanton;
        private string _CodRuta;
        private int _IdEstado;
        private int _IdTipoTarifa;
        private string _Localidad;
        private float _MonTarifa;
        private DateTime _FechaTarifa;
        private int _AnioTarifa;

        public int IdModTarifa
        {
            get
            {
                return _IdModTarifa;
            }

            set
            {
                _IdModTarifa = value;
            }
        }

        public int CodProvincia
        {
            get
            {
                return _CodProvincia;
            }

            set
            {
                _CodProvincia = value;
            }
        }

        public int CodCanton
        {
            get
            {
                return _CodCanton;
            }

            set
            {
                _CodCanton = value;
            }
        }

        public string CodRuta
        {
            get
            {
                return _CodRuta;
            }

            set
            {
                _CodRuta = value;
            }
        }

        public int IdEstado
        {
            get
            {
                return _IdEstado;
            }

            set
            {
                _IdEstado = value;
            }
        }

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

        public string Localidad
        {
            get
            {
                return _Localidad;
            }

            set
            {
                _Localidad = value;
            }
        }

        public float MonTarifa
        {
            get
            {
                return _MonTarifa;
            }

            set
            {
                _MonTarifa = value;
            }
        }

        public DateTime FechaTarifa
        {
            get
            {
                return _FechaTarifa;
            }

            set
            {
                _FechaTarifa = value;
            }
        }

        public int AnioTarifa
        {
            get
            {
                return _AnioTarifa;
            }

            set
            {
                _AnioTarifa = value;
            }
        }
    }
}