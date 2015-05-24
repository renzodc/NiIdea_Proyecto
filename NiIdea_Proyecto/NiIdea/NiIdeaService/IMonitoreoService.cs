using NiIdeaService.Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace NiIdeaService
{

    [ServiceContract]
    public interface IMonitoreoService
    {
        [OperationContract]
        Monitoreo CreaMonitoreo(DateTime fecha_ini, DateTime fecha_fin, int cantidad_so2,int cantidad_no2, int cantidad_co2, int codigo_ct);

        [OperationContract]
        Monitoreo ObtieneMonitoreo(int codigo_m);

        [OperationContract]
        Monitoreo ModificaMonitoreo(int codigo_m, DateTime fecha_ini, DateTime fecha_fin, int cantidad_so2, int cantidad_no2, int cantidad_co2, int codigo_ct);

        [OperationContract]
        void EliminarMonitoreo(int codigo_m);

        [OperationContract]
        List<Monitoreo> ListarMonitoreo();
    }
}
