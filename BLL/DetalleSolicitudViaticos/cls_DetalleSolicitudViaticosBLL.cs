using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.DetalleSolicitudViaticos
{
    public class cls_DetalleSolicitudViaticosBLL
    {
        #region Atributos

        private int _IdDetalleSolicitud;
        private int _IdSolicitud;
        private int _IdPersona;
        private int _IdModTarifa;
        private string _CodRuta;
        private float _CantViatico;
        private float _CantPasaje;
        private DateTime _FechaViatico;
        #endregion

        #region Propiedades
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

        public int IdSolicitud
        {
            get
            {
                return _IdSolicitud;
            }

            set
            {
                _IdSolicitud = value;
            }
        }

        public int IdPersona
        {
            get
            {
                return _IdPersona;
            }

            set
            {
                _IdPersona = value;
            }
        }

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

        public float CantViatico
        {
            get
            {
                return _CantViatico;
            }

            set
            {
                _CantViatico = value;
            }
        }

        public float CantPasaje
        {
            get
            {
                return _CantPasaje;
            }

            set
            {
                _CantPasaje = value;
            }
        }

        public DateTime FechaViatico
        {
            get
            {
                return _FechaViatico;
            }

            set
            {
                _FechaViatico = value;
            }
        }

        #endregion

        #region Constructor

        public cls_DetalleSolicitudViaticosBLL() { }

        #endregion

        public void guardar(cls_DetalleSolicitudViaticosBLL obj)
        {
            DAL.DetalleSolicitudViaticos.cls_DetalleSolicitudViaticos detalleSolicitud = new DAL.DetalleSolicitudViaticos.cls_DetalleSolicitudViaticos();

            detalleSolicitud.IdDetalleSolicitud = obj._IdDetalleSolicitud; // generar
            detalleSolicitud.IdSolicitud = obj._IdSolicitud; 
            detalleSolicitud.IdPersona = obj._IdPersona;
            detalleSolicitud.CantViatico = obj._CantViatico;
            detalleSolicitud.CantPasaje = obj._CantPasaje;
            detalleSolicitud.FechaViatico = obj._FechaViatico;

            detalleSolicitud.guardar(detalleSolicitud);


        }
    }
}
