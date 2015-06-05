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
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "COMERCIALService" en el código, en svc y en el archivo de configuración a la vez.
    // NOTA: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione COMERCIALService.svc o COMERCIALService.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class ComercialService : IComercialService
    {

        #region ClienteDAO
        private ClienteDAO clienteDAO = null;
        private ClienteDAO ClienteDAO
        {
            get { 
                if(clienteDAO == null)
                    clienteDAO = new ClienteDAO();
                return clienteDAO;
            }
        }


        public Cliente ObtenerCliente(int codigo)
        {
            //throw new NotImplementedException();
            return ClienteDAO.Obtener(codigo);
        }

        public List<Cliente> ListarClientes()
        {
            //throw new NotImplementedException();
            return ClienteDAO.ListarTodos().ToList();
        }

        #endregion 

         #region ServicioDAO

        private ServicioDAO servicioDAO = null;
        private ServicioDAO ServicioDAO
        {
            get
            {
                if (servicioDAO == null)
                    servicioDAO = new ServicioDAO();
                return servicioDAO;
            }
        }

        public List<Servicio> listarServicio()
        {
            return servicioDAO.ListarTodos().ToList();

        }


        public Servicio obtenerServicio(int codigo)
        {
            return servicioDAO.Obtener(codigo);
        }

        #endregion


    }
}
