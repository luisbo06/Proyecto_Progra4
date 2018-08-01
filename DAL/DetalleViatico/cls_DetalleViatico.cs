using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.DetalleViatico
{
    public class cls_DetalleViatico
    {
        private int _IdDetalleViatico;
        private int _IdDetalleSolicitud;
        private int _IdCabOrden;
        private float _MontDesayuno;
        private float _MontAlmuerzo;
        private float _MontCena;
        private float _CanDesayuno;
        private float _CanAlmuerzo;
        private float _CanCena;
        private float _CanPasaje;

        public int IdDetalleViatico
        {
            get
            {
                return _IdDetalleViatico;
            }

            set
            {
                _IdDetalleViatico = value;
            }
        }

        public int IdDetalleSolicitud
        {
            get
            {
                return _IdDetalleSolicitud;
            }

            set
            {
                _IdDetalleSolicitud = value;
            }
        }

        public int IdCabOrden
        {
            get
            {
                return _IdCabOrden;
            }

            set
            {
                _IdCabOrden = value;
            }
        }

        public float MontDesayuno
        {
            get
            {
                return _MontDesayuno;
            }

            set
            {
                _MontDesayuno = value;
            }
        }

        public float MontAlmuerzo
        {
            get
            {
                return _MontAlmuerzo;
            }

            set
            {
                _MontAlmuerzo = value;
            }
        }

        public float MontCena
        {
            get
            {
                return _MontCena;
            }

            set
            {
                _MontCena = value;
            }
        }

        public float CanDesayuno
        {
            get
            {
                return _CanDesayuno;
            }

            set
            {
                _CanDesayuno = value;
            }
        }

        public float CanAlmuerzo
        {
            get
            {
                return _CanAlmuerzo;
            }

            set
            {
                _CanAlmuerzo = value;
            }
        }

        public float CanCena
        {
            get
            {
                return _CanCena;
            }

            set
            {
                _CanCena = value;
            }
        }

        public float CanPasaje
        {
            get
            {
                return _CanPasaje;
            }

            set
            {
                _CanPasaje = value;
            }
        }
    }
}