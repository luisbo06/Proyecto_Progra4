using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.SolicitudViaticos
{
    public class cls_SolicitudViaticosBLL
    {
        #region Atributos

        private int _IdSolicitud;
        private string _NomUsuario;
        private int _IdEstado;
        private string _Destino;
        private string _Justificacion;
        private DateTime _FechaCreacion;
        private DateTime _FechaHoraSalida;
        private DateTime _FechaHoraRegreso;
        #endregion
       
        #region Propiedades
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

        public string Destino
        {
            get
            {
                return _Destino;
            }

            set
            {
                _Destino = value;
            }
        }

        public string Justificacion
        {
            get
            {
                return _Justificacion;
            }

            set
            {
                _Justificacion = value;
            }
        }

        public DateTime FechaCreacion
        {
            get
            {
                return _FechaCreacion;
            }

            set
            {
                _FechaCreacion = value;
            }
        }

        public DateTime FechaHoraSalida
        {
            get
            {
                return _FechaHoraSalida;
            }

            set
            {
                _FechaHoraSalida = value;
            }
        }

        public DateTime FechaHoraRegreso
        {
            get
            {
                return _FechaHoraRegreso;
            }

            set
            {
                _FechaHoraRegreso = value;
            }
        }

        #endregion

        #region Constructor

        public cls_SolicitudViaticosBLL() { }

        #endregion

        public void guardar(cls_SolicitudViaticosBLL obj)
        {
            DAL.SolicitudViaticos.cls_SolicitudViaticos Solicitud = new DAL.SolicitudViaticos.cls_SolicitudViaticos();

            Solicitud.IdSolicitud = obj._IdSolicitud; //generar
            Solicitud.NomUsuario = obj._NomUsuario;
            Solicitud.Destino = obj._Destino;
            Solicitud.Justificacion = obj._Justificacion;
            Solicitud.FechaCreacion = obj._FechaCreacion;
            Solicitud.FechaHoraSalida = obj._FechaHoraSalida;
            Solicitud.FechaHoraRegreso = obj._FechaHoraSalida;

            Solicitud.guardar(Solicitud);

        }
        public int GenerarID(int numero)
        {
            int ID=0;
            for (int i = 0; numero >= ID; i++)
            {
                ID++;
            }
   

            return ID;
        }
        public int ConsultarID()
        {
            DAL.SolicitudViaticos.cls_SolicitudViaticos Solicitud = new DAL.SolicitudViaticos.cls_SolicitudViaticos();
            return Solicitud.ConsultarID();
        }
        }
}
