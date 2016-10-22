using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Capa_de_Negocio;

namespace Capa_de_Presentacion
{
    public partial class Detalle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblCodigo.Text = Request.Cookies["informacion"].Values["codigoVino"];
                lblNombre.Text = Request.Cookies["informacion"].Values["nombreVino"];
                lblPrecio.Text = Request.Cookies["informacion"].Values["precioVino"];
                lblStock.Text = Request.Cookies["informacion"].Values["existenciaVino"];

                lblRutVendedor.Text = Request.Cookies["informacion"].Values["rutVendedor"];
                lblDvVendedor.Text = Request.Cookies["informacion"].Values["dvVendedor"];
                lblNombreVendedor.Text = Request.Cookies["informacion"].Values["nombreVendedor"];
                lblApellidoVendedor.Text = Request.Cookies["informacion"].Values["apellidoVendedor"];

                Request.Cookies.Clear();
            }
        }

        protected void btbAgregar_Click(object sender, EventArgs e)
        {
            int cantidad = int.Parse(txtCantidad.Text);
            int stock = int.Parse(lblStock.Text);
            string codigo = lblCodigo.Text;

            

        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListarVino.aspx");
        }

        protected void btnCarrito_Click(object sender, EventArgs e)
        {
            Response.Redirect("Carrito.aspx");
        }
    }
    
}