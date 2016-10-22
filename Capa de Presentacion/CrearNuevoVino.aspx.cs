using Capa_de_Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capa_de_Presentacion
{
    public partial class CrearNuevoVino : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearVino_Click(object sender, EventArgs e)
        {
            try
            {
                Vino vino = new Vino();

                vino.Codigo = txtCodigo.Text;
                vino.Nombre = txtNombre.Text;
                vino.Color = txtColor.Text;
                vino.Ano = int.Parse(txtAno.Text);
                vino.Precio = int.Parse(txtPrecio.Text);
                vino.Existencia = int.Parse(txtExistencia.Text);

                vino.Create();

                LimpiarControles();
            }
            catch (Exception ex)
            {
            }
        }

        private void LimpiarControles()
        {
            txtCodigo.Text = string.Empty;
            txtNombre.Text = string.Empty;
            txtColor.Text = string.Empty;
            txtAno.Text = string.Empty;
            txtPrecio.Text = string.Empty;
            txtExistencia.Text = string.Empty;

            txtCodigo.Focus();
        }
    }
}