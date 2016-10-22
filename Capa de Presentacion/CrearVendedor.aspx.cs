using System;

using Capa_de_Negocio;

namespace Capa_de_Presentacion
{
    public partial class MantenedorVendedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            Vendedor vendedor = new Vendedor();

            vendedor.Rut = int.Parse(txtRut.Text);
            vendedor.Dv = CalcularDv(txtRut.Text);
            vendedor.Nombre = txtNombre.Text;
            vendedor.ApPaterno = txtApPaterno.Text;
            vendedor.ApMaterno = txtApMaterno.Text;
            vendedor.Direccion = txtDireccion.Text;
            vendedor.Correo = txtCorreo.Text;
            vendedor.Telefono = int.Parse(txtTelefono.Text);

            vendedor.Create();

            LimpiarControles();
        }

        private String CalcularDv(String miRut)
        {
            int rut = int.Parse(miRut);

            int aux = 0;
            int mult = 2;
            int suma = 0;

            for (int i = 0 ; i < miRut.Length ; i++)
            {
                aux = rut % 10;
                suma = suma + (aux * mult);
                rut = rut - aux;
                rut = rut / 10;
                if (mult == 7)
                {
                    mult = 2;
                }
                else
                {
                    mult = mult + 1;
                }

            }

            int dig = 11 - (suma % 11);
            String dv;
            switch (dig)
            {
                case 10:
                    dv = "K";
                    break;
                case 11:
                    dv = "0";
                    break;
                default:
                    dv = dig.ToString();
                    break;
            }
            return dv;
        }

        private void LimpiarControles()
        {
            txtRut.Text = string.Empty;
            txtNombre.Text = string.Empty;
            txtApPaterno.Text = string.Empty;
            txtApMaterno.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            txtCorreo.Text = string.Empty;
            txtTelefono.Text = string.Empty;

            txtRut.Focus();
        }

        

    }
}
    

