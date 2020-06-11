using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vista
{
    public partial class PanelAdministracion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnABMUsuarios_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManejoUsuarios.aspx");
        }

        protected void btnABMMedicos_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManejoMedicos.aspx");
        }

        protected void btnABMPacientes_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManejoPacientes.aspx");
        }

        protected void btnABMEspecialidades_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManejoEspecialidades.aspx");
        }

        protected void btnABMTurnos_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManejoTurnos.aspx");
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }
    }
}