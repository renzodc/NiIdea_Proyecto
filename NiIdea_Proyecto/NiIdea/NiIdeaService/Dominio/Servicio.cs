using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

namespace NiIdeaService.Dominio
{
    [DataContract]
    public class Servicio
    {   
        [DataMember]
        public int Codigo { get; set; }
        [DataMember]
        public string Descripcion  { get; set; }
    }
}