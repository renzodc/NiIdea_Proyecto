using System;
using System.Collections.Generic;
using System.Linq;
using System.Messaging;
using System.Text;
using System.Threading.Tasks;

namespace AplicacionCliente
{
  public  class MonitoreoCliente
    {
      public  static void Main(string[] args)
        {
            string rutaCola = @".\private$\cola";
            if (!MessageQueue.Exists(rutaCola))
                MessageQueue.Create(rutaCola);

            MessageQueue cola = new MessageQueue(rutaCola);

            if (cola.GetAllMessages().Count() == 0)
            {
                Message mensaje = new Message();
                mensaje.Label = "Nuevo Monitoreo Poryecto";
                mensaje.Body = new MonitoreoProyecto() { Cliente = "Glenn", Proyecto = "Proyecto A&SO" };
                cola.Send(mensaje);
                Console.ReadLine();

            }
        }

        public class MonitoreoProyecto
        {
            public String Cliente { get; set; }
            public String Proyecto { get; set; }
        }
    }
}