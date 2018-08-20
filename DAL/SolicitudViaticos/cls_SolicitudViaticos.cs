using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.SolicitudViaticos
{
    public class cls_SolicitudViaticos
    {
        #region Propiedades

            private int _IdSolicitud;
            private string _NomUsuario;
            private int _IdEstado;
            private string _Destino;
            private string _Justificacion;
            private DateTime _FechaCreacion;
            private DateTime _FechaHoraSalida;
            private DateTime _FechaHoraRegreso;

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

            public cls_SolicitudViaticos() { }

        #endregion

        #region Base de datos

            DB_ViaticosDataContext DB_Contexto = new DB_ViaticosDataContext();

            public void guardar(cls_SolicitudViaticos obj)
            {
            DB_Contexto.sp_CrearSolicitud(obj._IdSolicitud,
                                           obj._NomUsuario,
                                           obj._Destino,
                                           obj._Justificacion,
                                           obj._FechaCreacion,
                                           obj._FechaHoraSalida,
                                           obj._FechaHoraRegreso);
            }

        public int ConsultarID()
        {
            int numero = 0;
            var ID = DB_Contexto.ConsultarID().FirstOrDefault();

            if (ID != null)
            {
                numero = ID.IdSolicitud;
            }
            else
            {
                numero = 1;
            }

            return numero;
        
        }

        #endregion
    }
}