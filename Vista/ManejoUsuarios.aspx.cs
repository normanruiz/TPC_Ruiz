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
    public partial class ManejoUsuarios : System.Web.UI.Page
    {
        public List<Usuario> ListaUsuarios { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ControladorUsuario controlador;
            try
            {

                controlador = new ControladorUsuario();
                ListaUsuarios = controlador.Listar();
 
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