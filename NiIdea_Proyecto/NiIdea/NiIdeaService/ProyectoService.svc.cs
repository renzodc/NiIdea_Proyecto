using NiIdeaService.Persistencia;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace NiIdeaService
{  
    public class ProyectoService : IProyectoService
    {
        private ProyectoDAO proyectoDAO = null;
        private ProyectoDAO ProyectoDAO
        {
            get
            {
                if (proyectoDAO == null)
                    proyectoDAO = new ProyectoDAO();
                return proyectoDAO;
            }
        }

        public Dominio.Proyecto CreaProyecto(string nombre, DateTime fecha_ini, DateTime fecha_fin, string responsable, string observacion, int codigo_c, int estado, bool cierreProyecto, string detalleProyecto)
        {
            Dominio.Proyecto proyectoACrear = new Dominio.Proyecto()
            {

                nombre = nombre,
                fecha_ini= fecha_ini,
                fecha_fin=fecha_fin,
                responsable=responsable,
                observacion=observacion,
                codigo_c=codigo_c,
                estado = estado,
                cierreProyecto = cierreProyecto,
                detalleProyecto = detalleProyecto

            };
            return ProyectoDAO.Crear(proyectoACrear);  
        }

        public Dominio.Proyecto ObtieneProyecto(int codigo_p)
        {
            return ProyectoDAO.Obtener(codigo_p);
        }

        public Dominio.Proyecto ModificaProyecto(int codigo_p, string nombre, DateTime fecha_ini, DateTime fecha_fin, string responsable, string observacion, int codigo_c, int estado, bool cierreProyecto, string detalleProyecto)
        {
            Dominio.Proyecto proyectoAModificar = new Dominio.Proyecto()
            {
                codigo_p = codigo_p,
                nombre = nombre,
                fecha_ini = fecha_ini,
                fecha_fin = fecha_fin,
                responsable=responsable,
                observacion = observacion,
                codigo_c = codigo_c,
                estado =estado,
                cierreProyecto = cierreProyecto,
                detalleProyecto = detalleProyecto
            };
            return ProyectoDAO.Modificar(proyectoAModificar);  
        }

        public void EliminarProyecto(int codigo_p)
        {
            Dominio.Proyecto proyectoExistente = ProyectoDAO.Obtener(codigo_p);
            ProyectoDAO.Eliminar(proyectoExistente);  
        }

        public List<Dominio.Proyecto> ListarProyecto()
        {
            return ProyectoDAO.ListarTodos().ToList();   
        }


    }
}
