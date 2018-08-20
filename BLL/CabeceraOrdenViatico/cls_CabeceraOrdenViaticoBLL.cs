using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.CabeceraOrdenViatico
{
    public class cls_CabeceraOrdenViaticoBLL
    {
        #region Atributos
        private int _IdOrden;
        private int _IdSolicitud;
        private int _IdEstado;
        private DateTime _FechaOrden;
        #endregion

        #region Propiedades
        public int IdOrden
        {
            get
            {
                return _IdOrden;
            }

            set
            {
                _IdOrden = value;
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

        public DateTime FechaOrden
        {
            get
            {
                return _FechaOrden;
            }

            set
            {
                _FechaOrden = value;
            }
        }
        #endregion

        #region Constructor
        public cls_CabeceraOrdenViaticoBLL() { }
        #endregion

        public void guardar(cls_CabeceraOrdenViaticoBLL obj)
        {
            DAL.CabeceraOrdenViatico.cls_CabeceraOrdenViatico orden = new DAL.CabeceraOrdenViatico.cls_CabeceraOrdenViatico();

            orden.IdOrden = obj._IdOrden;
            orden.IdSolicitud = obj._IdSolicitud;

            orden.guardar(orden);

        } 
        
    }
}
