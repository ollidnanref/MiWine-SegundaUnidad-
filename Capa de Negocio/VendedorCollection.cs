using System.Collections.Generic;
using System.Linq;

namespace Capa_de_Negocio
{
    public class VendedorCollection
    {
        private List<Vendedor> GenerarListado(List<Capa_de_Datos.Vendedor> VendedorDALC)
        {
            List<Capa_de_Negocio.Vendedor> vendedores = new List<Vendedor>();

            foreach (Capa_de_Datos.Vendedor ven in VendedorDALC)
            {
                Capa_de_Negocio.Vendedor vendedor = new Vendedor();

                vendedor.Rut = ven.Rut;
                vendedor.Nombre = ven.Nombre;
                vendedor.ApPaterno = ven.ApellidoPaterno;
                vendedor.ApPaterno = ven.ApellidoMaterno;
                vendedor.Direccion = ven.Direccion;
                vendedor.Correo = ven.Correo;
                vendedor.Telefono = ven.Telefono;

                vendedores.Add(vendedor);
            }
            return vendedores;
        }

        public List<Vendedor> ReadAll()
        {
            var vendedores = Common.ModeloMyWine.Vendedor;
            return GenerarListado(vendedores.ToList());
        }
    }
}
