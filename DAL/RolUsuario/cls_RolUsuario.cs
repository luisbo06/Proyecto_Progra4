using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.RolUsuario
{
    public class cls_RolUsuario
    {
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
    }
}
