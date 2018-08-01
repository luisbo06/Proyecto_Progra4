using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Provincia
{
    public class cls_Provincia
    {
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
    }
}
