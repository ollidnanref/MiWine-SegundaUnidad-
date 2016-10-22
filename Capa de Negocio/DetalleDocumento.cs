using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Capa_de_Datos;

namespace Capa_de_Negocio
{
    public class DetalleDocumento
    {
        public int Documento { get; set; }
        public string Vino { get; set; }
        public int Cantidad { get; set; }

        public DetalleDocumento()
        {
            Init();
        }

        private void Init()
        {
            Documento = 0;
            Vino = string.Empty;
            Cantidad = 0;
        }
    }
}