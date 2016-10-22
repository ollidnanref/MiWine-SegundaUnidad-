using Capa_de_Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capa_de_Presentacion
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            VinoCollection vinos = new VinoCollection();
            GridView1.DataSource = vinos.ReadAll();
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Vendedor vendedor = new Vendedor();



            VinoCollection coleccionVino = new VinoCollection();

            coleccionVino.ReadAll();

            
        }
    }
}