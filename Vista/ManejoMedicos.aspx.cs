using Controlador;
using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vista
{
    public partial class ManejoMedicos : System.Web.UI.Page
    {
        public List<Medico> ListaMedicos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ControladorMedico controlador;
            try
            {

                controlador = new ControladorMedico();
                ListaMedicos = controlador.Listar();

            }
            catch (Exception excepcion)
            {

            }
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("PanelAdministracion.aspx");
        }
    }
}