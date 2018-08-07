using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Estado
{
    public class cls_Estado
    {
        #region Propiedades

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

        #endregion

        #region Constructor

            public cls_Estado() { }

        #endregion

        #region Base de datos

            DB_ViaticosDataContext DB_Contexto = new DB_ViaticosDataContext();

            public void guardar(cls_Estado obj)
            {
                /*
                 * DB_Contexto.<SP>(obj.)
                 */
            }

        #endregion
    }
}
