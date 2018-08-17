using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Control_de_viaticos
{
    public partial class wbsLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
     
   

        protected void btnAutenticar_Click1(object sender, EventArgs e)
        {
            BLL.cls_UsuarioBLL usuario = new BLL.cls_UsuarioBLL();

            usuario.NomUsuario = txtUsuario.Text.Trim();
            usuario.ClaveAcceso = txtClave.Text.Trim();

            String Nombre = usuario.ValidarCredenciales(usuario);
            if(Nombre == "Nombre o contraseña incorrectos")
            {
               
                this.Page.Response.Write("<script language='JavaScript'>window.alert('" + "Nombre o contraseña incorrectos" + "');</script>");
            }
            else
            {
                Session["usuario"] = Nombre;
                Response.Redirect(@"~/Login%20y%20menu/Menu.aspx");
            }
           
        }

        protected void btnRecuperar_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"~/Login%20y%20menu/wbsRecuperar.aspx");
        }
    }
}