using System.Collections.Generic;
using System.Linq;

namespace Capa_de_Negocio
{
    public class VinoCollection
    {
        private List<Vino> GenerarListado(List<Capa_de_Datos.Vino> VinoDALC)
        {
            List<Capa_de_Negocio.Vino> vinos = new List<Vino>();

            foreach (Capa_de_Datos.Vino ven in VinoDALC)
            {
                Capa_de_Negocio.Vino vino = new Vino();

                vino.Codigo = ven.Codigo;
                vino.Nombre = ven.Nombre;
                vino.Color = ven.Color;
                vino.Ano = ven.Ano;
                vino.Precio = ven.Precio;
                vino.Existencia = ven.Existencia;

                vinos.Add(vino);
            }
            return vinos;
        }

        public List<Vino> ReadAll()
        {
            var vinos = Common.ModeloMyWine.Vino;
            return GenerarListado(vinos.ToList());
        }
    }
}
