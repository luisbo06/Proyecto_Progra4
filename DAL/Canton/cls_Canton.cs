using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Canton
{
    public class cls_Canton
    {
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
    }
}
