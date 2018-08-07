using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Canton
{
    public class cls_Canton
    {
        #region Propiedades

            private int _CodCanton;
            private int _CodProvincia;
            private string _DescCanton;

            public int CodCanton
            {
                get
                {
                    return _CodCanton;
                }

                set
                {
                    _CodCanton = value;
                }
            }

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

            public string DescCanton
            {
                get
                {
                    return _DescCanton;
                }

                set
                {
                    _DescCanton = value;
                }
            }

        #endregion

        #region Constructor

            public cls_Canton() { }

        #endregion

        #region Base de datos

            DB_ViaticosDataContext DB_Contexto = new DB_ViaticosDataContext();

            public void guardar(cls_Canton obj)
            {
                /*
                 * DB_Contexto.<SP>(obj.)
                 */
            }

        #endregion
    }
}
