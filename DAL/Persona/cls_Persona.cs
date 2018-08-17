using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Persona
{
    public class cls_Persona
    {
        #region Propiedades

        private int _IdPersona;
        private string _NomUsuario;
        private string _Nombre;
        private string _PrimerApellido;
        private string _SegundoApellido;
        private string _Email;

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

        public string Nombre
        {
            get
            {
                return _Nombre;
            }

            set
            {
                _Nombre = value;
            }
        }

        public string PrimerApellido
        {
            get
            {
                return _PrimerApellido;
            }

            set
            {
                _PrimerApellido = value;
            }
        }

        public string SegundoApellido
        {
            get
            {
                return _SegundoApellido;
            }

            set
            {
                _SegundoApellido = value;
            }
        }

        public string Email
        {
            get
            {
                return _Email;
            }

            set
            {
                _Email = value;
            }
        }

        #endregion

        #region Constructor

        public cls_Persona() { }

        #endregion

        #region Base de datos

        DB_ViaticosDataContext DB_Contexto = new DB_ViaticosDataContext();

        public void guardar(cls_Persona obj)
        {
            DB_Contexto.sp_RegistrarPersona
                                      (obj._IdPersona,
                                       obj._NomUsuario,
                                       obj._Nombre,
                                       obj._PrimerApellido,
                                       obj._SegundoApellido,
                                       obj._Email);
        }
        public void actualizar(cls_Persona obj)
        {
            DB_Contexto.sp_ActualizarPersona(obj._NomUsuario,
                                             obj._Nombre,
                                             obj._PrimerApellido,
                                             obj._SegundoApellido,
                                             obj._Email);

        }
        public cls_Persona Obtener(cls_Persona obj)
        {
            var consulta = DB_Contexto.sp_ObtenerPersona(obj._NomUsuario).FirstOrDefault();
            if (consulta != null)
            {
                obj._IdPersona = consulta.IdPersona;
                obj._Nombre = consulta.Nombre;
                obj._PrimerApellido = consulta.PrimerApellido;
                obj._SegundoApellido = consulta.SegundoApellido;
                obj._Email = consulta.Email;
            }
            else
            {
                obj = null;
            }
            return obj;
        }
        public cls_Persona ObtenerIDpersona(cls_Persona obj)
        {
            var consulta = DB_Contexto.sp_ObtenerIDPersona(obj._IdPersona).FirstOrDefault();
            if (consulta != null)
            {
                obj._IdPersona = consulta.IdPersona;
            }
            else
            {
                obj = null;
            }
            return obj;
        }



        #endregion
    }
}
