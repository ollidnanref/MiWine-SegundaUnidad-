using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Entity;

using Capa_de_Datos;

namespace Capa_de_Negocio
{
    public class Vendedor
    {
        public int Rut { get; set; }
        public string Dv { get; set; }
        public string Nombre { get; set; }
        public string ApPaterno { get; set; }
        public string ApMaterno { get; set; }
        public string Direccion { get; set; }
        public string Correo { get; set; }
        public int Telefono { get; set; }

        public Vendedor()
        {
            Init();
        }

        private void Init()
        {
            Rut = 0;
            Dv = string.Empty;
            Nombre = string.Empty;
            ApPaterno = string.Empty;
            ApMaterno = string.Empty;
            Direccion = string.Empty;
            Correo = string.Empty;
            Telefono = 0;
        }

        public bool Create()
        {
            try
            {
                Capa_de_Datos.Vendedor nuevoVendedor = new Capa_de_Datos.Vendedor();

                nuevoVendedor.Rut = this.Rut;
                nuevoVendedor.Dv = this.Dv;
                nuevoVendedor.Nombre = this.Nombre;
                nuevoVendedor.ApellidoPaterno = this.ApPaterno;
                nuevoVendedor.ApellidoMaterno = this.ApMaterno;
                nuevoVendedor.Direccion = this.Direccion;
                nuevoVendedor.Correo = this.Correo;
                nuevoVendedor.Telefono = this.Telefono;

                Common.ModeloMyWine.Vendedor.Add(nuevoVendedor);
                Common.ModeloMyWine.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public bool Read()
        {
            try
            {
                Capa_de_Datos.Vendedor vendedor = Common.ModeloMyWine.Vendedor.First(f => f.Rut == this.Rut);

                this.Rut = vendedor.Rut;
                this.Dv = vendedor. Dv;
                this.Nombre = vendedor.Nombre;
                this.ApPaterno = vendedor.ApellidoPaterno;
                this.ApMaterno = vendedor.ApellidoMaterno;
                this.Direccion = vendedor.Direccion;
                this.Correo = vendedor.Correo;
                this.Telefono = vendedor.Telefono;

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }


        public bool Update()
        {
            try
            {
                Capa_de_Datos.Vendedor vendedor = Common.ModeloMyWine.Vendedor.First(f => f.Rut == this.Rut);

                vendedor.Nombre = this.Nombre;
                vendedor.ApellidoPaterno = this.ApPaterno;
                vendedor.ApellidoMaterno = this.ApMaterno;
                vendedor.Direccion = this.Direccion;
                vendedor.Correo = this.Correo;
                vendedor.Telefono = this.Telefono;

                Common.ModeloMyWine.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public bool Delete()
        {
            try
            {
                Capa_de_Datos.Vendedor vendedor = Common.ModeloMyWine.Vendedor.First(f => f.Rut == this.Rut);

                Common.ModeloMyWine.Vendedor.Remove(vendedor);
                Common.ModeloMyWine.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}
