using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.DetalleViaticos
{
    public class cls_DetalleViaticoBLL
    {
        #region Atributos

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
        #endregion

        #region Propiedades
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

        #endregion

        #region Constructor

        public cls_DetalleViaticoBLL() { }

        #endregion

        public void guardar(cls_DetalleViaticoBLL obj)
        {
            DAL.DetalleViatico.cls_DetalleViatico DetalleViatico = new DAL.DetalleViatico.cls_DetalleViatico();

            DetalleViatico.IdDetalleViatico = obj._IdDetalleViatico; // generar
            DetalleViatico.IdDetalleSolicitud = obj._IdDetalleSolicitud; // generar
            DetalleViatico.IdCabOrden = obj._IdCabOrden;
            DetalleViatico.MontDesayuno = obj._MontDesayuno;
            DetalleViatico.MontAlmuerzo = obj._MontAlmuerzo;
            DetalleViatico.MontCena = obj._MontCena;
            DetalleViatico.CanDesayuno = obj._CanDesayuno;
            DetalleViatico.CanAlmuerzo = obj._CanAlmuerzo;
            DetalleViatico.CanCena = obj._CanCena;
            DetalleViatico.CanPasaje = obj._CanPasaje;

            DetalleViatico.guardar(DetalleViatico);




        }
    }
}
