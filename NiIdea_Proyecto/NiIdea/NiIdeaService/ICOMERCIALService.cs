using NiIdeaService.Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace NiIdeaService
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de interfaz "ICOMERCIALService" en el código y en el archivo de configuración a la vez.
    [ServiceContract]
    public interface IComercialService
    {
       
        [OperationContract]
        Cliente ObtenerCliente(int codigo);

        [OperationContract]
        List<Cliente> ListarClientes();

        [OperationContract]
        List<Servicio> listarServicio();

        [OperationContract]
        Servicio obtenerServicio(int codigo);

    }
}
