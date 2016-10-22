using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capa_de_Presentacion
{
    public partial class ListarVino : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblRutVendedor.Text = Request.Cookies["vendedor"].Values["rut"];
                lblDvVendedor.Text = Request.Cookies["vendedor"].Values["dv"];
                lblNombreVendedor.Text = Request.Cookies["vendedor"].Values["nombre"];
                lblApellidoVendedor.Text = Request.Cookies["vendedor"].Values["apellido"];

                Request.Cookies.Clear();
            }
        }

        protected void gvVinos_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            int f = gvVinos.SelectedIndex;

            HttpCookie informacion = new HttpCookie("informacion");

            informacion.Values.Add("codigoVino", gvVinos.Rows[f].Cells[1].Text);
            informacion.Values.Add("nombreVino", gvVinos.Rows[f].Cells[2].Text);
            informacion.Values.Add("precioVino", gvVinos.Rows[f].Cells[5].Text);
            informacion.Values.Add("existenciaVino", gvVinos.Rows[f].Cells[6].Text);

            informacion.Values.Add("rutVendedor", lblRutVendedor.Text);
            informacion.Values.Add("dvVendedor", lblDvVendedor.Text);
            informacion.Values.Add("nombreVendedor", lblNombreVendedor.Text);
            informacion.Values.Add("apellidoVendedor", lblApellidoVendedor.Text);

            Response.Cookies.Add(informacion);

            Response.Redirect("Detalle.aspx");
        }
    }
}