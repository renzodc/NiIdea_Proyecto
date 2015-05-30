using NiIdeaService.Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace NiIdeaService
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "IResponsableService" en el código y en el archivo de configuración a la vez.
    [ServiceContract]
    public interface IRRHHService
    {
        [OperationContract]
        Responsable ObtenerResponsable(int codigo);

        [OperationContract]
        List<Responsable> ListarResponsables();

        
    }
}
