using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace ComercialServiceTest
{
    [TestClass]
    public class ClienteTest
    {
        [TestMethod]
        public void TestMethod1()
        {
            //1. Instanciar el artefacto a probar
            ComercialService.ComercialServiceClient  proxy = new ComercialService.ComercialServiceClient();

            //2. Invocar la funcionalidad(operacion) a probar
            ComercialService.Cliente cliente = proxy.ObtenerCliente(1);

            //3. Verificar/Validar los resultados
            Assert.AreEqual("Sedapal", cliente.RazonSocial); 
        }
    }
}
