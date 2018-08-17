using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.Usuario;
namespace BLL
{
    public class cls_UsuarioBLL
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

        public cls_UsuarioBLL() { }

        #endregion

        public void Agregar(cls_UsuarioBLL obj)
        {
            DAL.Usuario.cls_Usuario usuario = new DAL.Usuario.cls_Usuario();

            usuario.NomUsuario = obj._NomUsuario;
            usuario.IdRol = obj._IdRol;
            usuario.ClaveAcceso = obj.ClaveAcceso;

            usuario.guardar(usuario);


        }
        public void Actualizar(cls_UsuarioBLL obj)
        {
            DAL.Usuario.cls_Usuario usuario = new DAL.Usuario.cls_Usuario();

            usuario.NomUsuario = obj._NomUsuario;
            usuario.IdRol = obj._IdRol;
            usuario.IdEstado = obj._IdEstado;
            usuario.ClaveAcceso = obj.ClaveAcceso;

            usuario.Actualizar(usuario);


        }
        public cls_UsuarioBLL Obtener(cls_UsuarioBLL obj)
        {
            DAL.Usuario.cls_Usuario usuario = new DAL.Usuario.cls_Usuario();

            usuario.NomUsuario = obj._NomUsuario;
            var usuario2 = usuario.Obtener(usuario);
         
            if (usuario2 != null)
            {
                obj._NomUsuario = usuario2.NomUsuario;
                obj._ClaveAcceso = usuario2.ClaveAcceso;
                obj._IdRol = usuario2.IdRol;
                obj._IdEstado = usuario2.IdEstado;
                return obj;

            }
            else
            {
                obj._NomUsuario = "Usuario no encontrado";
                return obj;
            }

            

        }
        public String ValidarCredenciales(cls_UsuarioBLL obj)
        {
            DAL.Usuario.cls_Usuario usuario = new DAL.Usuario.cls_Usuario();

            usuario.NomUsuario = obj._NomUsuario;
            usuario.ClaveAcceso = obj.ClaveAcceso;

            return usuario.ValidarCredenciales(usuario);


        }
    }
}
