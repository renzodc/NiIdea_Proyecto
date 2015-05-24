using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;

namespace NiIdeaService.Dominio
{
    [DataContract]
    public class Monitoreo
    {
        [DataMember]
        public int codigo_m { get; set; }

        [DataMember]
        public DateTime fecha_ini { get; set; }

        [DataMember]
        public DateTime fecha_fin { get; set; }

        [DataMember]
        public int cantidad_so2 { get; set; }

        [DataMember]
        public int cantidad_no2 { get; set; }

        [DataMember]
        public int cantidad_co2 { get; set; }

        [DataMember]
        public int codigo_ct { get; set; }
    }
}