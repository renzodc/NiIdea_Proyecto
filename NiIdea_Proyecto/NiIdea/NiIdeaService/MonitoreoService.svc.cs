using NiIdeaService.Persistencia;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace NiIdeaService
{
    public class MonitoreoService : IMonitoreoService
    {
        private MonitoreoDAO monitoreoDAO = null;
        private MonitoreoDAO MonitoreoDAO
        {
            get
            {
                if (monitoreoDAO == null)
                    monitoreoDAO = new MonitoreoDAO();
                return monitoreoDAO;
            }
        }

        public Dominio.Monitoreo CreaMonitoreo(DateTime fecha_ini, DateTime fecha_fin, int cantidad_so2, int cantidad_no2, int cantidad_co2, int codigo_ct)
        {
            Dominio.Monitoreo monitoreoACrear = new Dominio.Monitoreo()
            {
                fecha_ini = fecha_ini,
                fecha_fin = fecha_fin,
                cantidad_so2 = cantidad_so2,
                cantidad_no2 = cantidad_no2,
                cantidad_co2 = cantidad_co2,
                codigo_ct = codigo_ct
            };
            return MonitoreoDAO.Crear(monitoreoACrear);
        }

        public Dominio.Monitoreo ObtieneMonitoreo(int codigo_m)
        {
            return MonitoreoDAO.Obtener(codigo_m);
        }

        public Dominio.Monitoreo ModificaMonitoreo(int codigo_m, DateTime fecha_ini, DateTime fecha_fin, int cantidad_so2, int cantidad_no2, int cantidad_co2, int codigo_ct)
        {
            Dominio.Monitoreo monitoreoAModificar = new Dominio.Monitoreo()
            {
                codigo_m = codigo_m,
                fecha_ini = fecha_ini,
                fecha_fin = fecha_fin,
                cantidad_so2 = cantidad_so2,
                cantidad_no2 = cantidad_no2,
                cantidad_co2 = cantidad_co2,
                codigo_ct = codigo_ct
            };
            return MonitoreoDAO.Modificar(monitoreoAModificar);
        }

        public void EliminarMonitoreo(int codigo_m)
        {
            Dominio.Monitoreo monitoreoExistente = MonitoreoDAO.Obtener(codigo_m);
            MonitoreoDAO.Eliminar(monitoreoExistente);
        }
        
        public List<Dominio.Monitoreo> ListarMonitoreo()
        {
            return MonitoreoDAO.ListarTodos().ToList();
        }
    }
}
