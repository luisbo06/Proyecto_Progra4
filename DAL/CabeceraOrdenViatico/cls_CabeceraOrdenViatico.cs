using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.CabeceraOrdenViatico
{
    public class cls_CabeceraOrdenViatico
    {
        private int _IdOrden;
        private int _IdSolicitud;
        private int _IdEstado;
        private DateTime _FechaOrden;

        public int IdOrden
        {
            get
            {
                return _IdOrden;
            }

            set
            {
                _IdOrden = value;
            }
        }

        public int IdSolicitud
        {
            get
            {
                return _IdSolicitud;
            }

            set
            {
                _IdSolicitud = value;
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

        public DateTime FechaOrden
        {
            get
            {
                return _FechaOrden;
            }

            set
            {
                _FechaOrden = value;
            }
        }
    }
}