using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Capa_de_Datos;

namespace Capa_de_Negocio
{
    public class Documento
    {
        public int Codigo { get; set; }
        public string Tipo { get; set; }
        public DateTime Fecha { get; set; }
        public string Vendedor { get; set; }

        public Documento()
        {
            Init();
        }

        private void Init()
        {
            Codigo = 0;
            Tipo = string.Empty;
            Fecha = new DateTime(1 - 1 - 1900);
            Vendedor = string.Empty;
        }
    }
}