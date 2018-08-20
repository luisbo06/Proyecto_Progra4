using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.CabeceraOrdenViatico
{
    public class cls_CabeceraOrdenViatico
    {
        #region Propiedades
            private int _IdOrden;
            private int _IdSolicitud;
            private int _IdEstado;
            private DateTime _FechaOrden;

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
            public cls_CabeceraOrdenViatico() { }
        #endregion

        #region Base de datos

            DB_ViaticosDataContext DB_Contexto = new DB_ViaticosDataContext();

            public void guardar(cls_CabeceraOrdenViatico obj)
            {
            DB_Contexto.sp_CrearOrden(obj._IdOrden,
                                      obj._IdSolicitud);
            }

        #endregion
    }
}