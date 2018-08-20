using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Control_de_viaticos
{
    public partial class wbsSolicitudDeViaticos : System.Web.UI.Page
    {
        int ContadorDeSolicitudes;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblNombreGenerado.Text=Session["usuario"].ToString();
        
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"~/Formularios%20de%20solicitud%20de%20viaticos/wbsOpcionesSolicitudViaticos.aspx");
        }

        protected void btnEnviarSolicitud_Click(object sender, EventArgs e)
        {

         
            ContadorDeSolicitudes = Convert.ToInt32(Session["ContadorDeSolicitudes"]);


            if (ContadorDeSolicitudes == 0)
            {
                BLL.SolicitudViaticos.cls_SolicitudViaticosBLL solicitud = new BLL.SolicitudViaticos.cls_SolicitudViaticosBLL();
                BLL.DetalleSolicitudViaticos.cls_DetalleSolicitudViaticosBLL DetalleSolicitud = new BLL.DetalleSolicitudViaticos.cls_DetalleSolicitudViaticosBLL();
                BLL.DetalleViaticos.cls_DetalleViaticoBLL DetalleViatico = new BLL.DetalleViaticos.cls_DetalleViaticoBLL();
                BLL.CabeceraOrdenViatico.cls_CabeceraOrdenViaticoBLL CabeceraOrden = new BLL.CabeceraOrdenViatico.cls_CabeceraOrdenViaticoBLL();
                BLL.Persona.cls_PersonaBLL persona = new BLL.Persona.cls_PersonaBLL();

                persona.NomUsuario = lblNombreGenerado.Text;
                var Idpersona = persona.Obtener(persona);

                //Solicitud
                solicitud.IdSolicitud = solicitud.GenerarID(solicitud.ConsultarID());
                solicitud.NomUsuario = lblNombreGenerado.Text.Trim();
                solicitud.Destino = txtDestino.Text;
                solicitud.Justificacion = txtJustificacion.Text;
                solicitud.FechaCreacion = DateTime.Now;
                solicitud.FechaHoraSalida = Convert.ToDateTime(txtFechaHoraSalida.Text);
                solicitud.FechaHoraRegreso = Convert.ToDateTime(txtFechaHoraRegreso.Text);
                //DetalleSolicitud
                DetalleSolicitud.IdDetalleSolicitud = solicitud.GenerarID(solicitud.ConsultarID()); ;
                DetalleSolicitud.IdSolicitud = solicitud.GenerarID(solicitud.ConsultarID()); ;
                DetalleSolicitud.IdPersona = Idpersona.IdPersona;
                DetalleSolicitud.FechaViatico = Convert.ToDateTime(txtFechaReciboDeViaticos.Text);
                DetalleSolicitud.CantPasaje = Convert.ToSingle(txtCantidadPasajes.Text);
                DetalleSolicitud.CantViatico = Convert.ToSingle(txtCantidadViaticos.Text);
                //DetalleViaticos
                DetalleViatico.IdDetalleViatico = solicitud.GenerarID(solicitud.ConsultarID()); ;
                DetalleViatico.IdDetalleSolicitud = solicitud.GenerarID(solicitud.ConsultarID()); ;
                DetalleViatico.IdCabOrden = solicitud.GenerarID(solicitud.ConsultarID()); ;
                DetalleViatico.CanDesayuno = Convert.ToSingle(txtCantidadDesayunos.Text);
                DetalleViatico.CanAlmuerzo = Convert.ToSingle(txtCantidadAlmuerzos.Text);
                DetalleViatico.CanCena = Convert.ToSingle(txtCantidadCenas.Text);
                DetalleViatico.CanPasaje = Convert.ToSingle(txtCantidadPasajes.Text);
                DetalleViatico.MontDesayuno = Convert.ToSingle(txtMontoDesayuno.Text);
                DetalleViatico.MontAlmuerzo = Convert.ToSingle(txtMontoAlmuerzo.Text);
                DetalleViatico.MontCena = Convert.ToSingle(txtMontoCena.Text);
                //OrdenViaticos
                CabeceraOrden.IdOrden = solicitud.GenerarID(solicitud.ConsultarID()); ;
                CabeceraOrden.IdSolicitud = solicitud.GenerarID(solicitud.ConsultarID()); ;

            
               solicitud.guardar(solicitud);
                DetalleSolicitud.guardar(DetalleSolicitud);
                DetalleViatico.guardar(DetalleViatico);
                CabeceraOrden.guardar(CabeceraOrden);
                this.Page.Response.Write("<script language='JavaScript'>window.alert('" + "Solicitud creada" + "');</script>");

                Session["ContadorDeSolicitudes"] = 1;
             
                
            }
            else
            {
                this.Page.Response.Write("<script language='JavaScript'>window.alert('" + "Ya tiene una solicitud pendiente" + "');</script>");
               
            }
        }

        protected void btnAgregarColaborador_Click(object sender, EventArgs e)
        {

        }
    }
}