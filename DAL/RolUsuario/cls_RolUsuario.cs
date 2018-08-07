using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.RolUsuario
{
    public class cls_RolUsuario
    {
        #region Propiedades

            private int _IdRol;
            private int _IdEstado;
            private string _DescEstado;

            public int IdRol
            {
                get
                {
                    return _IdRol;
                }

                set
                {
                    _IdRol = value;
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

            public string DescEstado
            {
                get
                {
                    return _DescEstado;
                }

                set
                {
                    _DescEstado = value;
                }
            }

        #endregion

        #region Constructor

            public cls_RolUsuario() { }

        #endregion

        #region Base de datos

            DB_ViaticosDataContext DB_Contexto = new DB_ViaticosDataContext();

            public void guardar(cls_RolUsuario obj)
            {
                /*
                 * DB_Contexto.<SP>(obj.)
                 */
            }

        #endregion
    }
}
