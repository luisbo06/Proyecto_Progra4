using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Persona
{
    public class cls_Persona
    {
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
    }
}
