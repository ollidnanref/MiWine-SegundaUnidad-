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
    public class Vino
    {
        public string Codigo { get; set; }
        public string Nombre { get; set; }
        public string Color { get; set; }
        public int Ano { get; set; }
        public int Precio { get; set; }
        public int Existencia { get; set; }

        public Vino()
        {
            Init();
        }

        private void Init()
        {
            Codigo = string.Empty;
            Nombre = string.Empty;
            Color = string.Empty;
            Ano = 0;
            Precio = 0;
            Existencia = 0;
        }

        public bool Create()
        {
            try
            {
                Capa_de_Datos.Vino nuevoVino = new Capa_de_Datos.Vino();

                nuevoVino.Codigo = this.Codigo;
                nuevoVino.Nombre = this.Nombre;
                nuevoVino.Color = this.Color;
                nuevoVino.Ano = this.Ano;
                nuevoVino.Precio = this.Precio;
                nuevoVino.Existencia = this.Existencia;

                Common.ModeloMyWine.Vino.Add(nuevoVino);
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
                Capa_de_Datos.Vino vino = Common.ModeloMyWine.Vino.First
                    (f => f.Codigo == this.Codigo);

                this.Codigo = vino.Codigo;
                this.Nombre = vino.Nombre;
                this.Color = vino.Color;
                this.Ano = vino.Ano;
                this.Precio = vino.Precio;
                this.Existencia = vino.Existencia;

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
                Capa_de_Datos.Vino vino = Common.ModeloMyWine.Vino.First
                    (f => f.Codigo == this.Codigo);

                vino.Codigo = this.Codigo;
                vino.Nombre = this.Nombre;
                vino.Color = this.Color;
                vino.Ano = this.Ano;
                vino.Precio = this.Precio;
                vino.Existencia = this.Existencia;

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
                Capa_de_Datos.Vino vino = Common.ModeloMyWine.Vino.First
                    (f => f.Codigo == this.Codigo);

                Common.ModeloMyWine.Vino.Remove(vino);
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