using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Estado
{
    public class cls_Estado
    {
        private int _IdEstado;
        private string _DescEstado;

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
