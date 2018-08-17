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
            DB_Contexto.sp_RegistrarUsuario(obj._NomUsuario,
                                            obj._IdRol,
                                            obj._ClaveAcceso);
        }
        public void Actualizar(cls_Usuario obj)
        {
            DB_Contexto.sp_ActualizarUsuario(obj._NomUsuario,
                                             obj._IdRol,
                                             obj._IdEstado,
                                             obj._ClaveAcceso);
        }
        public cls_Usuario Obtener(cls_Usuario obj)
        {
            var consulta = DB_Contexto.sp_ObtenerUsuario(obj._NomUsuario).FirstOrDefault();

            if (consulta != null)
            {
                obj._NomUsuario = consulta.NomUsuario;
                obj._ClaveAcceso = consulta.ClaveAcceso;
                obj._IdRol = consulta.IdRol;
                obj._IdEstado = consulta.IdEstado;
            }
            else
            {
                obj = null;
            }
           
            return obj;

        }
        public String ValidarCredenciales(cls_Usuario obj)
        {
            var consulta = DB_Contexto.sp_ValidarCredenciales(obj._NomUsuario, obj._ClaveAcceso).FirstOrDefault();
            if (consulta != null)
            {
                obj._NomUsuario = consulta.NomUsuario;

            }
            else
            {
                obj._NomUsuario = "Nombre o contraseña incorrectos";
            }

            return obj._NomUsuario;
        }
        #endregion


    }
}
