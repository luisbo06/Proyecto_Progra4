﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Control_de_viaticos.Formularios_de_solicitud_de_viaticos
{
    public partial class ConsultaViaticosFuncionario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"~/Formularios%20de%20solicitud%20de%20viaticos/wbsOpcionesSolicitudViaticos.aspx");
        }

        protected void ddCanton_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}