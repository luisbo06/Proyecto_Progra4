using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.Persona;
namespace BLL.Persona
{
    public class cls_PersonaBLL
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

        public cls_PersonaBLL()
        {

        }

        #endregion

        public void Agregar(cls_PersonaBLL obj)
        {
            DAL.Persona.cls_Persona persona = new DAL.Persona.cls_Persona();

            persona.IdPersona = obj._IdPersona;
            persona.NomUsuario = obj._NomUsuario;
            persona.Nombre = obj._Nombre;
            persona.PrimerApellido = obj._PrimerApellido;
            persona.SegundoApellido = obj._SegundoApellido;
            persona.Email = obj._Email;

            persona.guardar(persona);
        }
        public void Actualizar(cls_PersonaBLL obj)
        {
            DAL.Persona.cls_Persona persona = new DAL.Persona.cls_Persona();

            persona.NomUsuario = obj._NomUsuario;
            persona.Nombre = obj._Nombre;
            persona.PrimerApellido = obj._PrimerApellido;
            persona.SegundoApellido = obj._SegundoApellido;
            persona.Email = obj._Email;

            persona.actualizar(persona);
        }
        public cls_PersonaBLL Obtener(cls_PersonaBLL obj)
        {
            DAL.Persona.cls_Persona persona = new DAL.Persona.cls_Persona();
            persona.NomUsuario = obj._NomUsuario;
            var usuario2 = persona.Obtener(persona);
            if (usuario2 != null)
            {
                obj._Nombre = usuario2.Nombre;
                obj._IdPersona = usuario2.IdPersona;
                obj._PrimerApellido = usuario2.PrimerApellido;
                obj._SegundoApellido = usuario2.SegundoApellido;
                obj._Email = usuario2.Email;
            }
            else
            {
                obj._Nombre = "Persona no existe";

            }
            return obj;
        }
        public cls_PersonaBLL ObtenerIDpersona(cls_PersonaBLL obj)
        {
            DAL.Persona.cls_Persona persona = new DAL.Persona.cls_Persona();
            persona.IdPersona = obj._IdPersona;
            var usuario2 = persona.ObtenerIDpersona(persona);
            if (usuario2 != null)
            {
                
                obj._IdPersona = usuario2.IdPersona;
              
            }
            else
            {
                obj._IdPersona = -12;

            }
            return obj;
        }

    }
}
