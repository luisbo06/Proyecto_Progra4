using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Usuario
{
    public class cls_Usuario
    {
        #region Propiedades

            private string _NomUsuario;
            private int _IdRol;
            private int _IdEstado;
            private string _ClaveAcceso;

            public string NomUsuario
            {
                get
                {
                    return _NomUsuario;
                }

                set
                {
                    _NomUsuario = value;
                }
            }

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

            public string ClaveAcceso
            {
                get
                {
                    return _ClaveAcceso;
                }

                set
                {
                    _ClaveAcceso = value;
                }
            }

        #endregion

        #region Constructor

            public cls_Usuario() { }

        #endregion

        #region Base de datos

            DB_ViaticosDataContext DB_Contexto = new DB_ViaticosDataContext();

            public void guardar(cls_Usuario obj)
            {
                /*
                 * DB_Contexto.<SP>(obj.)
                 */
            }

        #endregion
    }
}
