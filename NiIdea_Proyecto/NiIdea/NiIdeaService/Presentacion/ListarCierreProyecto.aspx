<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarCierreProyecto.aspx.cs" Inherits="NiIdeaService.Presentacion.ListarCierreProyecto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Free Bootstrap Admin Template : Binary Admin</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="../assets/css/bootstrap.css" rel="stylesheet" />

     <!-- FONTAWESOME STYLES-->
    <link href="../assets/css/font-awesome.css" rel="stylesheet" />
   
     <!-- MORRIS CHART STYLES-->
    <link href="../assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />

    <!-- CUSTOM STYLES-->
    <link href="../assets/css/custom.css" rel="stylesheet" />

     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

      <style type="text/css">
          .auto-style1 {
              width: 41px;
          }
          .auto-style3 {
              width: 49px;
          }
          .auto-style4 {
              width: 128px;
          }
          .auto-style5 {
              width: 75px;
          }
          .auto-style6 {
              width: 23px;
          }
          .auto-style7 {
              width: 22px;
          }
      </style>

</head>

    <body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button> 
                <a class="navbar-brand" href="RegistrarProyecto.aspx">AysoApp</a>
            </div>

  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"><!-- Last access : 30 May 2014 &nbsp; --><a href="#" class="btn btn-danger square-btn-adjust">Logout</a> 
</div>


        </nav>   
           <!-- /. NAV TOP  -->
            <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <%--<img src="..assets/img/find_user.png" class="user-image img-responsive"/>--%>
                    <img src="../assets/img/find_user.png" />
					</li>
									
                    <li>
                        <a  href="RegistrarProyecto.aspx"><i class="fa fa-dashboard fa-3x"></i> Proyecto</a>
                    </li>
                     <li>
                        <a  href="RegistrarCotizacion.aspx"><i class="fa fa-desktop fa-3x"></i>Cotización</a>
                    </li>
                    <li>
                        <a  href="RegistrarMonitoreo.aspx"><i class="fa fa-qrcode fa-3x"></i>Monitoreo</a>
                    </li>
						   <li  >
                        <a  class="active-menu" href="ListarCierreProyecto.aspx"><i class="fa fa-bar-chart-o fa-3x"></i>Cierre</a>
                    </li>	
                      <li  >
                        <a   href="ListarProyecto.aspx"><i class="fa fa-table fa-3x"></i>Cartera de Proyectos</a>
                    </li>
                    <li  >
                        <a  href="form.html"><i class="fa fa-edit fa-3x"></i>Page02</a>
                    </li>				
					
					                   
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-3x"></i>Page03<span class="fa arrow"></span></a>
                      <%--  <ul class="nav nav-second-level">
                            <li>
                                <a href="#">Second Level Link</a>
                            </li>
                            <li>
                                <a href="#">Second Level Link</a>
                            </li>
                            <li>
                                <a href="#">Second Level Link<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>

                                </ul>
                               
                            </li>
                        </ul>--%>
                      </li>  
                  <li  >
                        <a  href="blank.html"><i class="fa fa-square-o fa-3x"></i>Page04</a>
                    </li>	
                </ul>
               
            </div>            
        </nav>  



        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">

                <div class="row">
                    <div class="col-md-12">
                     <h2>Cierre de Proyecto</h2>   
                        <h5></h5>
                    </div>
                </div>         
                
                <div>

                    <!--AGREGANDO UNA NUEVA GRILLA-->
                    <!-- comentado!!!
                    <div>
                        <asp:Button ID="btnListarCierreProyecto"  Text="Listar" />
                        <asp:GridView ID="GridView1"  CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="codigo_p" HeaderText="Codigo" />
                                <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                                <asp:BoundField DataField="fecha_ini" DataFormatString="dd/mm/yyyy" HeaderText="Fecha Ini" />
                                <asp:BoundField DataField="fecha_fin" DataFormatString="dd/mm/yyyy" HeaderText="Fecha Fin" />
                                <asp:BoundField DataField="responsable" HeaderText="Responsable" />
                                <asp:BoundField DataField="observacion" HeaderText="Observacion" />
                                <asp:BoundField DataField="estadoCierre" HeaderText="Estado" />
                                <asp:BoundField DataField="descCierre" HeaderText="Detalle" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>


                    </div>
                    -->

                    

                    <div class="col-md-6">
                       
                      
                        <div class="col-md-12">
                    <!-- Advanced Tables -->

                    <div class="panel panel-default">
                        <div class="panel-heading">
                             Lista de Proyectos
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <div id="dataTables-example_wrapper" class="dataTables_wrapper form-inline" role="grid"><div class="row"><div class="col-sm-6"><div class="dataTables_length" id="dataTables-example_length"><label><select name="dataTables-example_length" aria-controls="dataTables-example" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> records per page</label></div></div><div class="col-sm-6"><div id="dataTables-example_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control input-sm" aria-controls="dataTables-example"></label></div></div></div><table class="table table-striped table-bordered table-hover dataTable no-footer" id="dataTables-example" aria-describedby="dataTables-example_info">
                                    <thead>
                                        <tr role="row">
                                            <th class="auto-style3" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column ascending">Nombre</th>
                                            <th class="auto-style1" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending">Cliente</th>
                                            <th class="auto-style4" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Fecha Inicio</th>
                                            <th class="auto-style5" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending">Fecha Fin</th>
                                            <th class="auto-style6" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending">Est</th>
                                            <!--
                                            <th class="auto-style7" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending">Detalle</th>
                                            -->

                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                        
                                        
                                        
                                     
                                    <tr class="gradeA odd">
                                            <td class="auto-style3">Gecko</td>
                                            <td class="auto-style1">Firefox 1.0</td>
                                            <td class="auto-style4">12/05/2010</td>
                                            <td class="auto-style5">13/06/2011</td>
                                            <td class="auto-style6">1</td>
                                        </tr><tr class="gradeA even">
                                            <td class="auto-style3">Gecko</td>
                                            <td class="auto-style1">Firefox 1.5</td>
                                            <td class="auto-style4">12/05/2010</td>
                                            <td class="auto-style5">13/06/2011</td>
                                            <td class="auto-style6">0</td>
                                        </tr><tr class="gradeA odd">
                                            <td class="auto-style3">Gecko</td>
                                            <td class="auto-style1">Firefox 2.0</td>
                                            <td class="auto-style4">12/05/2010</td>
                                            <td class="auto-style5">13/06/2011</td>
                                            <td class="auto-style6">1</td>
                                        </tr><tr class="gradeA even">
                                            <td class="auto-style3">Gecko</td>
                                            <td class="auto-style1">Firefox 3.0</td>
                                            <td class="auto-style4">12/05/2010</td>
                                            <td class="auto-style5">13/06/2011</td>
                                            <td class="auto-style6">0</td>
                                        </tr><tr class="gradeA odd">
                                            <td class="auto-style3">Gecko</td>
                                            <td class="auto-style1">Camino 1.0</td>
                                            <td class="auto-style4">12/05/2010</td>
                                            <td class="auto-style5">13/06/2011</td>
                                            <td class="auto-style6">1</td>
                                        </tr><tr class="gradeA even">
                                            <td class="auto-style3">Gecko</td>
                                            <td class="auto-style1">Camino 1.5</td>
                                            <td class="auto-style4">12/05/2010</td>
                                            <td class="auto-style5">13/06/2011</td>
                                            <td class="auto-style6">0</td>
                                        </tr><tr class="gradeA odd">
                                            <td class="auto-style3">Gecko</td>
                                            <td class="auto-style1">Netscape 7.2</td>
                                            <td class="auto-style4">12/05/2010</td>
                                            <td class="auto-style5">13/06/2011</td>
                                            <td class="auto-style6">1</td>
                                        </tr><tr class="gradeA even">
                                            <td class="auto-style3">Gecko</td>
                                            <td class="auto-style1">Netscape Browser 8</td>
                                            <td class="auto-style4">12/05/2010</td>
                                            <td class="auto-style5">13/06/2011</td>
                                            <td class="auto-style6">1</td>
                                        </tr><tr class="gradeA odd">
                                            <td class="auto-style3">Gecko</td>
                                            <td class="auto-style1">Netscape Navigator 9</td>
                                            <td class="auto-style4">12/05/2010</td>
                                            <td class="auto-style5">13/06/2011</td>
                                            <td class="auto-style6">1</td>
                                        </tr><tr class="gradeA even">
                                            <td class="auto-style3">Gecko</td>
                                            <td class="auto-style1">Mozilla 1.0</td>
                                            <td class="auto-style4">12/05/2010</td>
                                            <td class="auto-style5">13/06/2011</td>
                                            <td class="auto-style6">1</td>
                                       
                                        </tr></tbody>
                                </table><div class="row"><div class="col-sm-6"><div class="dataTables_info" id="dataTables-example_info" role="alert" aria-live="polite" aria-relevant="all">Showing 1 to 10 of 57 entries</div></div><div class="col-sm-6"><div class="dataTables_paginate paging_simple_numbers" id="dataTables-example_paginate"><ul class="pagination"><li class="paginate_button previous disabled" aria-controls="dataTables-example" tabindex="0" id="dataTables-example_previous"><a href="#">Previous</a></li><li class="paginate_button active" aria-controls="dataTables-example" tabindex="0"><a href="#">1</a></li><li class="paginate_button " aria-controls="dataTables-example" tabindex="0"><a href="#">2</a></li><li class="paginate_button " aria-controls="dataTables-example" tabindex="0"><a href="#">3</a></li><li class="paginate_button " aria-controls="dataTables-example" tabindex="0"><a href="#">4</a></li><li class="paginate_button " aria-controls="dataTables-example" tabindex="0"><a href="#">5</a></li><li class="paginate_button " aria-controls="dataTables-example" tabindex="0"><a href="#">6</a></li><li class="paginate_button next" aria-controls="dataTables-example" tabindex="0" id="dataTables-example_next"><a href="#">Next</a></li></ul></div></div></div></div>
                            </div>
                        </div>
                    </div>
                            -
                    <!--End Advanced Tables -->
                </div>
                       
<%--                        <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                              Click  Launch Demo Modal
                            </button>--%>
            <%--           <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                            <h4 class="modal-title" id="myModalLabel">Modal title Here</h4>
                                        </div>
                                        <div class="modal-body">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary">Save changes</button>
                                        </div>
                                    </div>
                                </div>
                            </div>--%>

                    </div>


                </div>


<%--                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-envelope-o"></i>
                </span>
                <div class="text-box" >
                    <p class="main-text">120 New</p>
                    <p class="text-muted">Messages</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-green set-icon">
                    <i class="fa fa-bars"></i>
                </span>
                <div class="text-box" >
                    <p class="main-text">30 Tasks</p>
                    <p class="text-muted">Remaining</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-blue set-icon">
                    <i class="fa fa-bell-o"></i>
                </span>
                <div class="text-box" >
                    <p class="main-text">240 New</p>
                    <p class="text-muted">Notifications</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-brown set-icon">
                    <i class="fa fa-rocket"></i>
                </span>
                <div class="text-box" >
                    <p class="main-text">3 Orders</p>
                    <p class="text-muted">Pending</p>
                </div>
             </div>
		     </div>
			</div>
                 <!-- /. ROW  -->


                <hr />                
                <div class="row">
                    <div class="col-md-6 col-sm-12 col-xs-12">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-blue">
                    <i class="fa fa-warning"></i>
                </span>
                <div class="text-box" >
                    <p class="main-text">52 Important Issues to Fix </p>
                    <p class="text-muted">Please fix these issues to work smooth</p>
                    <p class="text-muted">Time Left: 30 mins</p>
                    <hr />
                    <p class="text-muted">
                          <span class="text-muted color-bottom-txt"><i class="fa fa-edit"></i>
                               Lorem ipsum dolor sit amet, consectetur adipiscing elit gthn. 
                              Lorem ipsum dolor sit amet, consectetur adipiscing elit gthn. 
                               </span>
                    </p>
                </div>
             </div>
		     </div>
                    
                    
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <div class="panel back-dash">
                               <i class="fa fa-dashboard fa-3x"></i><strong> &nbsp; SPEED</strong>
                             <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipiscing sit ametsit amet elit ftr. Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                        </div>
                       
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12 ">
                        <div class="panel ">
          <div class="main-temp-back">
            <div class="panel-body">
              <div class="row">
                <div class="col-xs-6"> <i class="fa fa-cloud fa-3x"></i> Newyork City </div>
                <div class="col-xs-6">
                  <div class="text-temp"> 10° </div>
                </div>
              </div>
            </div>
          </div>
          
        </div>
                     <div class="panel panel-back noti-box">
                <span class="icon-box bg-color-green set-icon">
                    <i class="fa fa-desktop"></i>
                </span>
                <div class="text-box" >
                    <p class="main-text">Display</p>
                    <p class="text-muted">Looking Good</p>
                </div>
             </div>
			
    </div>
                        
        </div>
                 <!-- /. ROW  -->
                <div class="row"> 
                    
                      
                               <div class="col-md-9 col-sm-12 col-xs-12">                     
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Bar Chart Example
                        </div>
                        <div class="panel-body">
                            <div id="morris-bar-chart"></div>
                        </div>
                    </div>            
                </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">                       
                    <div class="panel panel-primary text-center no-boder bg-color-green">
                        <div class="panel-body">
                            <i class="fa fa-bar-chart-o fa-5x"></i>
                            <h3>120 GB </h3>
                        </div>
                        <div class="panel-footer back-footer-green">
                           Disk Space Available
                            
                        </div>
                    </div>
                    <div class="panel panel-primary text-center no-boder bg-color-red">
                        <div class="panel-body">
                            <i class="fa fa-edit fa-5x"></i>
                            <h3>20,000 </h3>
                        </div>
                        <div class="panel-footer back-footer-red">
                            Articles Pending
                            
                        </div>
                    </div>                         
                        </div>
                
                </div>
                 <!-- /. ROW  -->
                <div class="row" >
                    <div class="col-md-3 col-sm-12 col-xs-12">
  <div class="panel panel-primary text-center no-boder bg-color-green">
                        <div class="panel-body">
                            <i class="fa fa-comments-o fa-5x"></i>
                            <h4>200 New Comments </h4>
                             <h4>See All Comments  </h4>
                        </div>
                        <div class="panel-footer back-footer-green">
                             <i class="fa fa-rocket fa-5x"></i>
                            Lorem ipsum dolor sit amet sit sit, consectetur adipiscing elitsit sit gthn ipsum dolor sit amet ipsum dolor sit amet
                            
                        </div>
                    </div>
                    </div>
                    <div class="col-md-9 col-sm-12 col-xs-12">
               
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Responsive Table Example
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Username</th>
                                             <th>User No.</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                            <td>100090</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                            <td>100090</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Larry</td>
                                            <td>the Bird</td>
                                            <td>@twitter</td>
                                            <td>100090</td>
                                        </tr>
                                         <tr>
                                            <td>1</td>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                            <td>100090</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                            <td>100090</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Larry</td>
                                            <td>the Bird</td>
                                            <td>@twitter</td>
                                            <td>100090</td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    
                    </div>
                </div>
                 <!-- /. ROW  -->
                <div class="row">
                    <div class="col-md-6 col-sm-12 col-xs-12">
                   
                    <div class="chat-panel panel panel-default chat-boder chat-panel-head" >
                        <div class="panel-heading">
                            <i class="fa fa-comments fa-fw"></i>
                            Chat Box
                            <div class="btn-group pull-right">
                                <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-chevron-down"></i>
                                </button>
                                <ul class="dropdown-menu slidedown">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-refresh fa-fw"></i>Refresh
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-check-circle fa-fw"></i>Available
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-times fa-fw"></i>Busy
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-clock-o fa-fw"></i>Away
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-sign-out fa-fw"></i>Sign Out
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="panel-body">
                            <ul class="chat-box">
                                <li class="left clearfix">
                                    <span class="chat-img pull-left">
                                        <img src="assets/img/1.png" alt="User" class="img-circle" />
                                    </span>
                                    <div class="chat-body">                                        
                                            <strong >Jack Sparrow</strong>
                                            <small class="pull-right text-muted">
                                                <i class="fa fa-clock-o fa-fw"></i>12 mins ago
                                            </small>                                      
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.
                                        </p>
                                    </div>
                                </li>
                                <li class="right clearfix">
                                    <span class="chat-img pull-right">

                                        <img src="assets/img/2.png" alt="User" class="img-circle" />
                                    </span>
                                    <div class="chat-body clearfix">
                                        
                                            <small class=" text-muted">
                                                <i class="fa fa-clock-o fa-fw"></i>13 mins ago</small>
                                            <strong class="pull-right">Jhonson Deed</strong>
                                      
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.
                                        </p>
                                    </div>
                                </li>
                                <li class="left clearfix">
                                    <span class="chat-img pull-left">
                                         <img src="assets/img/3.png" alt="User" class="img-circle" />
                                    </span>
                                    <div class="chat-body clearfix">
                                        
                                            <strong >Jack Sparrow</strong>
                                            <small class="pull-right text-muted">
                                                <i class="fa fa-clock-o fa-fw"></i>14 mins ago</small>
                                        
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.
                                        </p>
                                    </div>
                                </li>
                                <li class="right clearfix">
                                    <span class="chat-img pull-right">
                                         <img src="assets/img/4.png" alt="User" class="img-circle" />
                                    </span>
                                    <div class="chat-body clearfix">
                                      
                                            <small class=" text-muted">
                                                <i class="fa fa-clock-o fa-fw"></i>15 mins ago</small>
                                            <strong class="pull-right">Jhonson Deed</strong>
                                       
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.
                                        </p>
                                    </div>
                                </li>
                                    <li class="left clearfix">
                                    <span class="chat-img pull-left">
                                        <img src="assets/img/1.png" alt="User" class="img-circle" />
                                    </span>
                                    <div class="chat-body">                                        
                                            <strong >Jack Sparrow</strong>
                                            <small class="pull-right text-muted">
                                                <i class="fa fa-clock-o fa-fw"></i>12 mins ago
                                            </small>                                      
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.
                                        </p>
                                    </div>
                                </li>
                                <li class="right clearfix">
                                    <span class="chat-img pull-right">
                                       <img src="assets/img/2.png" alt="User" class="img-circle" />
                                    </span>
                                    <div class="chat-body clearfix">
                                        
                                            <small class=" text-muted">
                                                <i class="fa fa-clock-o fa-fw"></i>13 mins ago</small>
                                            <strong class="pull-right">Jhonson Deed</strong>
                                      
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.
                                        </p>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div class="panel-footer">
                            <div class="input-group">
                                <input id="btn-input" type="text" class="form-control input-sm" placeholder="Type your message to send..." />
                                <span class="input-group-btn">
                                    <button class="btn btn-warning btn-sm" id="btn-chat">
                                        Send
                                    </button>
                                </span>
                            </div>
                        </div>

                    </div>
                    
                </div>
                    <div class="col-md-6 col-sm-12 col-xs-12">
                         <div class="panel panel-default">
                        <div class="panel-heading">
                           Label Examples
                        </div>
                        <div class="panel-body">
                            <span class="label label-default">Default</span>
<span class="label label-primary">Primary</span>
<span class="label label-success">Success</span>
<span class="label label-info">Info</span>
<span class="label label-warning">Warning</span>
<span class="label label-danger">Danger</span>
                        </div>
                    </div>
                         
                         <div class="panel panel-default">
                        <div class="panel-heading">
                            Donut Chart Example
                        </div>
                        <div class="panel-body">
                            <div id="morris-donut-chart"></div>
                        </div>
                    </div>
                      
                    </div>
                </div>     
                 <!-- /. ROW  -->       --%>
                    
            
             <!-- /. PAGE INNER  -->
         </div>
         <!-- /. PAGE WRAPPER  -->

        </div>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="..assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="..assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="..assets/js/jquery.metisMenu.js"></script>
     <!-- MORRIS CHART SCRIPTS -->
     <script src="..assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="..assets/js/morris/morris.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="..assets/js/custom.js"></script>
    
   
</body>
</html>