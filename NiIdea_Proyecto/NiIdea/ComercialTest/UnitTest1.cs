using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace ComercialTest
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            //Invocando al ws
            ComercialServiceWS.COMERCIALServiceClient proxy = new ComercialServiceWS.COMERCIALServiceClient();


            //Obtener
            ComercialServiceWS.Cliente cliente = proxy.ObtenerCliente(1);
            Assert.AreEqual("Sedapal", cliente.Nombre);
        }
    }
}
