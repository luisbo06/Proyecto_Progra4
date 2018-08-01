using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.TarifaAutobus
{
    public class cls_TarifaAutobus
    {
        private string _CodRuta;
        private int _CodProvincia;
        private int _IdEstado;
        private float _TarifaReg;
        private string _DscRuta;
        private DateTime _FechaVigencia;

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

        public float TarifaReg
        {
            get
            {
                return _TarifaReg;
            }

            set
            {
                _TarifaReg = value;
            }
        }

        public string DscRuta
        {
            get
            {
                return _DscRuta;
            }

            set
            {
                _DscRuta = value;
            }
        }

        public DateTime FechaVigencia
        {
            get
            {
                return _FechaVigencia;
            }

            set
            {
                _FechaVigencia = value;
            }
        }
    }
}
