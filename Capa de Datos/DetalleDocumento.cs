//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Capa_de_Datos
{
    using System;
    using System.Collections.Generic;
    
    public partial class DetalleDocumento
    {
        public string Documento { get; set; }
        public string Vino { get; set; }
        public int Cantidad { get; set; }
    
        public virtual Documento Documento1 { get; set; }
        public virtual Vino Vino1 { get; set; }
    }
}
