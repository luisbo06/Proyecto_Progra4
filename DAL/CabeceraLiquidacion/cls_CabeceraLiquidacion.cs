using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.CabeceraLiquidacion
{
    public class cls_CabeceraLiquidacion
    {
        #region Propiedades
            private int _IdLiquidacion;
            private int _IdOrden;
            private int _IdEstado;
            private DateTime _FechaLiquidacion;
            private float _MonCena;
            private float _MonDes;
            private float _MonHosp;
            private float _MonPasj;
            private float _MonAlm;

            public int IdLiquidacion
            {
                get
                {
                    return _IdLiquidacion;
                }

                set
                {
                    _IdLiquidacion = value;
                }
            }

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

            public DateTime FechaLiquidacion
            {
                get
                {
                    return _FechaLiquidacion;
                }

                set
                {
                    _FechaLiquidacion = value;
                }
            }

            public float MonCena
            {
                get
                {
                    return _MonCena;
                }

                set
                {
                    _MonCena = value;
                }
            }

            public float MonDes
            {
                get
                {
                    return _MonDes;
                }

                set
                {
                    _MonDes = value;
                }
            }

            public float MonHosp
            {
                get
                {
                    return _MonHosp;
                }

                set
                {
                    _MonHosp = value;
                }
            }

            public float MonPasj
            {
                get
                {
                    return _MonPasj;
                }

                set
                {
                    _MonPasj = value;
                }
            }

            public float MonAlm
            {
                get
                {
                    return _MonAlm;
                }

                set
                {
                    _MonAlm = value;
                }
            }
        #endregion

        #region Constructor

            public cls_CabeceraLiquidacion() { }

        #endregion

        #region Base de datos

            DB_ViaticosDataContext DB_Contexto = new DB_ViaticosDataContext();        

            public void guardar(cls_CabeceraLiquidacion obj)
            {
                /*(obj.IdEstado,obj.IdLiquidacion,obj.IdOrden,obj.MonAlm)
                /*
                 * DB_Contexto.<SP>(obj.<datos SP>);
                 */
            }

        #endregion
    }
}