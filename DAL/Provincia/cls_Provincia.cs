using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Provincia
{
    public class cls_Provincia
    {
        #region Propiedades

            private int _CodProvincia;
            private string _DescProvincia;

            public int CodProvincia
            {
                get
                {
                    return _CodProvincia;
                }

                set
                {
                    _CodProvincia = value;
                }
            }

            public string DescProvincia
            {
                get
                {
                    return _DescProvincia;
                }

                set
                {
                    _DescProvincia = value;
                }
            }

        #endregion

        #region Constructor

            public cls_Provincia() { }

        #endregion

        #region Base de datos

            DB_ViaticosDataContext DB_Contexto = new DB_ViaticosDataContext();

            public void guardar(cls_Provincia obj)
            {
                /*
                 * DB_Contexto.<SP>(obj.)
                 */
            }

        #endregion
    }
}
