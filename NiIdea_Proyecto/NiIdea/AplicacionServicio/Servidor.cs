using System;
using System.Collections.Generic;
using System.Linq;
using System.Messaging;
using System.Text;
using System.Threading.Tasks;

namespace AplicacionServicio
{
  public  class Servidor
    {
     public   static void Main(string[] args)
        {


            //Recibe la Nota 
            string rutaCola = @".\private$\cola";

            if (!MessageQueue.Exists(rutaCola))
                MessageQueue.Create(rutaCola);

            MessageQueue cola = new MessageQueue(rutaCola);
            cola.Formatter = new XmlMessageFormatter(new Type[] { typeof(MonitoreoProyecto) });
            Message mensaje = cola.Receive();
            MonitoreoProyecto monitoreo = (MonitoreoProyecto)mensaje.Body;
            Console.WriteLine("Asunto: " + mensaje.Label);
            Console.WriteLine("Cliente: " + monitoreo.Cliente + "Proyecto: " + monitoreo.Proyecto);
           Console.ReadLine();

            


        }

     public class MonitoreoProyecto
     {
         public String Cliente { get; set; }
         public String Proyecto { get; set; }
     }
    }
}
