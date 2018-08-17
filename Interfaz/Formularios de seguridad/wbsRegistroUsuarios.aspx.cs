using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
namespace Control_de_viaticos.Formularios_de_seguridad
{

    public partial class wbsRegistroUsuarios : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
            cmbRol.Items.Add("Funcionario");
            cmbRol.Items.Add("Jefatura");
           
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"~/Formularios%20de%20seguridad/wbsOpcionesSeguridad.aspx");
        }

        protected void btnRegistrarUsuario_Click(object sender, EventArgs e)
        {
           
           
           
            BLL.cls_UsuarioBLL usuario = new BLL.cls_UsuarioBLL();
             BLL.Persona.cls_PersonaBLL persona = new BLL.Persona.cls_PersonaBLL();
            usuario.NomUsuario = txtNombreUsuario.Text.Trim();
            var usuario2 = usuario.Obtener(usuario);
            if (usuario2.NomUsuario == "Usuario no encontrado")
            {
                if (cmbRol.SelectedItem.ToString().Equals("Funcionario"))
                {
                    usuario.IdRol = 1;
                }
                else if (cmbRol.SelectedItem.ToString().Equals("Jefatura"))
                {
                    usuario.IdRol = 2;
                }
                usuario.NomUsuario = txtNombreUsuario.Text.Trim();
                usuario.ClaveAcceso = txtContraseña.Text.Trim();

                persona.IdPersona = Convert.ToInt32(txtIdPersona.Text.Trim());

                var validarID=persona.ObtenerIDpersona(persona);
                if (validarID.IdPersona == -12)
                {
                    persona.Nombre = txtNombre.Text.Trim();
                    persona.PrimerApellido = txtPrimerApellido.Text.Trim();
                    persona.SegundoApellido = txtSegundoApellido.Text.Trim();
                    persona.IdPersona = Convert.ToInt32(txtIdPersona.Text.Trim());
                    persona.Email = txtCorreo.Text.Trim();
                    persona.NomUsuario = txtNombreUsuario.Text.Trim();
                    usuario.Agregar(usuario);
                    persona.Agregar(persona);
                    this.Page.Response.Write("<script language='JavaScript'>window.alert('" + "Usuario registrado" + "');</script>");
                    
                }
                else
                {
                    this.Page.Response.Write("<script language='JavaScript'>window.alert('" + "El Codigo de persona ya existe" + "');</script>");
                }
                
            }
            else
            {
                this.Page.Response.Write("<script language='JavaScript'>window.alert('" + "El usuario ya existe" + "');</script>");
            }


        }
    }
}