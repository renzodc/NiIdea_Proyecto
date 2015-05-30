using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace RRHHServiceTest
{
    [TestClass]
    public class ResponsableTest
    {
        [TestMethod]
        public void TestMethod1()
        {
            //LLamando al web service
            RRHHServiceWS.RRHHServiceClient proxy = new RRHHServiceWS.RRHHServiceClient();

            //Obtener
            RRHHServiceWS.Responsable responsable = proxy.ObtenerResponsable(2);
            Assert.AreEqual("glenn", responsable.Nombre);

            
        }
    }
}
