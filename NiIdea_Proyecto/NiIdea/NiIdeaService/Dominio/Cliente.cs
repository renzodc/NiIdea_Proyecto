using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;

namespace NiIdeaService.Dominio
{
    [DataContract]
    public class Cliente
    {
        [DataMember]
        public int Codigo { get; set; }
        [DataMember]
        public string Ruc { get; set; }
        [DataMember]
        public string RazonSocial { get; set; }
        [DataMember]
        public string Direccion { get; set; }
        [DataMember]
        public string Correo { get; set; }
        [DataMember]
        public string Telefono { get; set; }
        

        

    }
}