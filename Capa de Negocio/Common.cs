using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Capa_de_Datos;

namespace Capa_de_Negocio
{
    public class Common
    {
        private static MyWineDBEntities _modeloMyWine;

        public static MyWineDBEntities ModeloMyWine
        {
            get
            {
                if (_modeloMyWine == null)
                {
                    _modeloMyWine = new MyWineDBEntities();
                }
                return _modeloMyWine;
            }
        }

        public Common()
        {

        }
    }
}
