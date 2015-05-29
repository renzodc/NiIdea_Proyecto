using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;

namespace NiIdeaService.Dominio
{
    [DataContract]
    public class Responsable
    {
        [DataMember]
        public int Codigo { get; set; }
        [DataMember]
        public string Nombre { get; set; }
        [DataMember]
        public string ApePaterno { get; set; }
        [DataMember]
        public string ApeMaterno { get; set; }
        [DataMember]
        public string Correo { get; set; }
        [DataMember]
        public string Telefono { get; set; }
        [DataMember]
        public short Edad { get; set; }
        [DataMember]
        public char Sexo { get; set; }
        
    }
}