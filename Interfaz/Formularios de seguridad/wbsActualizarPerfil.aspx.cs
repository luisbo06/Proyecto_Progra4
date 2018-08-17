using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Control_de_viaticos.Formularios_de_seguridad
{
    public partial class wbsActualizarPerfil : System.Web.UI.Page
    {
        int conteos;
        protected void Page_Load(object sender, EventArgs e)
        {

            ViewState["Conteos"] = Convert.ToInt32(ViewState["Conteos"]) + 1;
            conteos = Convert.ToInt32(ViewState["Conteos"]);
            if (conteos == 1)
            {
                BLL.cls_UsuarioBLL usuario = new BLL.cls_UsuarioBLL();
                BLL.Persona.cls_PersonaBLL persona = new BLL.Persona.cls_PersonaBLL();
                usuario.NomUsuario = Session["usuario"].ToString();
                persona.NomUsuario = Session["usuario"].ToString();
                var usuario2 = usuario.Obtener(usuario);
                var persona2 = persona.Obtener(persona);

                txtNombreUsuario.Text = usuario2.NomUsuario;
                txtContraseña.Text = usuario2.ClaveAcceso;
                txtRepetirContraseña.Text = usuario2.ClaveAcceso;
                cmbRol.Text = usuario2.IdRol.ToString();
                cmbEstado.Text = usuario2.IdEstado.ToString();
                txtNombre.Text = persona.Nombre;
                txtPrimerApellido.Text = persona.PrimerApellido;
                txtSegundoApellido.Text = persona.SegundoApellido;
                txtCorreo.Text = persona.Email;
            }


        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"~/Formularios%20de%20seguridad/wbsOpcionesSeguridad.aspx");
        }

        protected void btnActualizarUsuario_Click(object sender, EventArgs e)
        {



            BLL.cls_UsuarioBLL usuario = new BLL.cls_UsuarioBLL();
            BLL.Persona.cls_PersonaBLL persona = new BLL.Persona.cls_PersonaBLL();
            usuario.NomUsuario = txtNombreUsuario.Text.Trim();
            var usuario2 = usuario.Obtener(usuario);
            if (usuario2.NomUsuario == "Usuario no encontrado")
            {
                this.Page.Response.Write("<script language='JavaScript'>window.alert('" + "Usuario no existe" + "');</script>");
            }
            else
            {
                if (cmbRol.SelectedItem.ToString().Equals("Funcionario"))
                {
                    usuario.IdRol = 1;
                }
                else if (cmbRol.SelectedItem.ToString().Equals("Jefatura"))
                {
                    usuario.IdRol = 2;
                }
                if (cmbEstado.SelectedItem.ToString().Equals("Activo"))
                {
                    usuario.IdEstado = 1;
                }
                else if (cmbRol.SelectedItem.ToString().Equals("Inactivo"))
                {
                    usuario.IdEstado = 0;
                }

                usuario.NomUsuario = txtNombreUsuario.Text.Trim();
                usuario.ClaveAcceso = txtContraseña.Text.Trim();
                persona.Nombre = txtNombre.Text.Trim();
                persona.PrimerApellido = txtPrimerApellido.Text.Trim();
                persona.SegundoApellido = txtSegundoApellido.Text.Trim();
                persona.Email = txtCorreo.Text.Trim();
                persona.NomUsuario = txtNombreUsuario.Text.Trim();
                usuario.Actualizar(usuario);
                persona.Actualizar(persona);

                this.Page.Response.Write("<script language='JavaScript'>window.alert('" + "Usuario Actualizado" + "');</script>");
            }
        }
    }
}