using NiIdeaService.Dominio;
using NiIdeaService.Persistencia;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace NiIdeaService
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "ResponsableService" en el código, en svc y en el archivo de configuración a la vez.
    // NOTA: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione ResponsableService.svc o ResponsableService.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class ResponsableService : IRRHHService
    {
        private ResponsableDAO responsableDAO = null;
        private ResponsableDAO ResponsableDAO
        {
            get
            {
                if (responsableDAO == null)
                    responsableDAO = new ResponsableDAO();
                return responsableDAO;
            }
        }

        public Responsable ObtenerResponsable(int codigo)
        {
            //throw new NotImplementedException();
            return ResponsableDAO.Obtener(codigo);

        }

        public List<Responsable> ListarResponsables()
        {
            //throw new NotImplementedException();
            return ResponsableDAO.ListarTodos().ToList();
        }
    }
}
