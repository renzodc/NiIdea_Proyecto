 <%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/Ayso.Master" AutoEventWireup="true" CodeBehind="Monitoreo.aspx.cs" Inherits="NiIdeaService.Presentacion.Monitoreo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2>Monitoreo</h2>
                        <h5></h5>
                    </div>
                </div>

                <hr />
                
                <div id="divNuevo" runat="server" visible="false">
                    <div class="col-md-6">
                        
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Nuevo Monitoreo
                            </div>
                        
                            <div class="panel-body">

                                <p class="main-text">Proyecto</p>
                                <asp:DropDownList ID="ddlProyecto" runat="server" class="form-control">
                                    <asp:ListItem Value="1" Text="Proyecto1"></asp:ListItem>
                                    <asp:ListItem Value="2" Text="Proyecto2"></asp:ListItem>
                                </asp:DropDownList>
                        

                                <p class="main-text">Cantidad SO2</p>
                                <asp:TextBox ID="txtCantSO2" runat="server" CssClass="form-control"></asp:TextBox>

                                <p class="main-text">Cantidad NO2</p>
                                <asp:TextBox ID="txtCantNO2" runat="server" class="form-control"></asp:TextBox>

                                <p class="main-text">Cantidad CO2</p>
                                <asp:TextBox ID="txtCantCO2" runat="server" class="form-control"></asp:TextBox>

                                <p class="main-text">Cliente</p>
                                <asp:DropDownList ID="ddlCliente" runat="server" class="form-control">
                                    <asp:ListItem Value="1" Text="Cliente1"></asp:ListItem>
                                    <asp:ListItem Value="2" Text="Cliente2"></asp:ListItem>
                                </asp:DropDownList>

                                <p class="main-text">Fecha Inicio</p>
                                <asp:TextBox ID="txtFechaInicio" runat="server" class="form-control"></asp:TextBox>

                                <p class="main-text">Fecha Fin</p>
                                <asp:TextBox ID="txtFechaFin" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>


                        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar"  class="btn btn-default btn-lg" OnClick="btnRegistrar_Click" />


                    </div>


                </div>

                <div id="divListar" runat="server" visible="false">
                    <div class="col-md-6">
                        
                         <div class="panel panel-default">
                            <div class="panel-heading">
                                Listar Monitoreo
                            </div>
                             <div class="panel-body">
                                <asp:GridView ID="GvMonitoreo" runat="server" AutoGenerateColumns="true">

                                </asp:GridView>    

                                 <div style="padding-top:10px;">
                                 <asp:Button ID="btnModificar" runat="server" Text="Modificar"  class="btn btn-default btn-lg" /> 
                                  &nbsp;
                                 <asp:Button ID="btnEliminar" runat="server" Text="Eliminar"  class="btn btn-default btn-lg" />   
                                 </div>
                             </div>
                             
                         </div>

                    </div>

                </div>
                <hr />
                <div>
                    <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>

                </div>
                <div class="col-md-6">
                    <asp:Button ID="btnNuevo" runat="server" Text="Nuevo"  class="form-control" OnClick="btnNuevo_Click"/>
                    <asp:Button ID="btnListar" runat="server" Text="Listar" class="form-control" OnClick="btnListar_Click" />
                </div>
            </div>
     
         </div>
</asp:Content>
