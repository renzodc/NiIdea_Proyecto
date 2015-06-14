using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NiIdeaService.Presentacion
{
    public partial class Monitoreo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ListarProyecto();
        }

        public void ListarProyecto() {

            ProyectoWS.ProyectoServiceClient proyectoWS = new ProyectoWS.ProyectoServiceClient();
            List<ProyectoWS.Proyecto> proyectoLista = new List<ProyectoWS.Proyecto>();
            
            proyectoLista = proyectoWS.ListarProyecto().ToList();
            
            ddlProyecto.DataSource = proyectoLista;
            ddlProyecto.DataTextField = "codigo_p";
            ddlProyecto.DataValueField= "nombre";
            
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            divNuevo.Visible = true;
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {

            MonitoreoWS.MonitoreoServiceClient monitoreoWS = new MonitoreoWS.MonitoreoServiceClient();

            divNuevo.Visible = true;
            divListar.Visible = false;

            if (!string.IsNullOrEmpty(ddlProyecto.SelectedValue))
            {
                try
                {
                    monitoreoWS.CreaMonitoreo(Convert.ToDateTime(txtFechaInicio.Text),
                                               Convert.ToDateTime(txtFechaFin.Text),
                                               Convert.ToInt32(txtCantSO2.Text),
                                                Convert.ToInt32(txtCantNO2.Text),
                                                Convert.ToInt32(txtCantCO2.Text),
                                                Convert.ToInt32(ddlCliente.SelectedValue),
                                                Convert.ToInt32(ddlProyecto.SelectedValue));

                    lblMensaje.Text = "Se registro Correctamente";

                }
                catch (Exception ex)
                {
                    lblMensaje.Text = ex.Message.ToString();
                }


            }
            

        }

        protected void btnListar_Click(object sender, EventArgs e)
        {

            MonitoreoWS.MonitoreoServiceClient monitoreoWS = new MonitoreoWS.MonitoreoServiceClient();
            List<MonitoreoWS.Monitoreo> lista = new List<MonitoreoWS.Monitoreo>();

            divNuevo.Visible = false;
            divListar.Visible = true;


            try
            {
                lista = monitoreoWS.ListarMonitoreo().ToList();
                GvMonitoreo.DataSource = lista;
                GvMonitoreo.DataBind();

            }
            catch (Exception ex)
            {
                lblMensaje.Text = ex.Message.ToString();
            }
        }

        

    }
}