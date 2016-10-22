using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capa_de_Presentacion
{
    public partial class ListarVendedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvVendedor_SelectedIndexChanged(object sender, EventArgs e)
        {
            try {
                int f =  gvVendedor.SelectedIndex;
                HttpCookie vendedor = new HttpCookie("vendedor");

                vendedor.Values.Add("rut", gvVendedor.Rows[f].Cells[1].Text);
                vendedor.Values.Add("dv", gvVendedor.Rows[f].Cells[2].Text);
                vendedor.Values.Add("nombre", gvVendedor.Rows[f].Cells[3].Text);
                vendedor.Values.Add("apellido", gvVendedor.Rows[f].Cells[4].Text);

                Response.Cookies.Add(vendedor);

                Response.Redirect("ListarVino.aspx");
            } catch (Exception ex) {
                
            }

            
        }
    }
}