﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18444
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace NiIdeaService.ProyectoWS {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Proyecto", Namespace="http://schemas.datacontract.org/2004/07/NiIdeaService.Dominio")]
    [System.SerializableAttribute()]
    public partial class Proyecto : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private bool cierreProyectoField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int codigo_cField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int codigo_pField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string detalleProyectoField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int estadoField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private System.DateTime fecha_finField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private System.DateTime fecha_iniField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string nombreField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string observacionField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string responsableField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public bool cierreProyecto {
            get {
                return this.cierreProyectoField;
            }
            set {
                if ((this.cierreProyectoField.Equals(value) != true)) {
                    this.cierreProyectoField = value;
                    this.RaisePropertyChanged("cierreProyecto");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int codigo_c {
            get {
                return this.codigo_cField;
            }
            set {
                if ((this.codigo_cField.Equals(value) != true)) {
                    this.codigo_cField = value;
                    this.RaisePropertyChanged("codigo_c");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int codigo_p {
            get {
                return this.codigo_pField;
            }
            set {
                if ((this.codigo_pField.Equals(value) != true)) {
                    this.codigo_pField = value;
                    this.RaisePropertyChanged("codigo_p");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string detalleProyecto {
            get {
                return this.detalleProyectoField;
            }
            set {
                if ((object.ReferenceEquals(this.detalleProyectoField, value) != true)) {
                    this.detalleProyectoField = value;
                    this.RaisePropertyChanged("detalleProyecto");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int estado {
            get {
                return this.estadoField;
            }
            set {
                if ((this.estadoField.Equals(value) != true)) {
                    this.estadoField = value;
                    this.RaisePropertyChanged("estado");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public System.DateTime fecha_fin {
            get {
                return this.fecha_finField;
            }
            set {
                if ((this.fecha_finField.Equals(value) != true)) {
                    this.fecha_finField = value;
                    this.RaisePropertyChanged("fecha_fin");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public System.DateTime fecha_ini {
            get {
                return this.fecha_iniField;
            }
            set {
                if ((this.fecha_iniField.Equals(value) != true)) {
                    this.fecha_iniField = value;
                    this.RaisePropertyChanged("fecha_ini");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string nombre {
            get {
                return this.nombreField;
            }
            set {
                if ((object.ReferenceEquals(this.nombreField, value) != true)) {
                    this.nombreField = value;
                    this.RaisePropertyChanged("nombre");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string observacion {
            get {
                return this.observacionField;
            }
            set {
                if ((object.ReferenceEquals(this.observacionField, value) != true)) {
                    this.observacionField = value;
                    this.RaisePropertyChanged("observacion");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string responsable {
            get {
                return this.responsableField;
            }
            set {
                if ((object.ReferenceEquals(this.responsableField, value) != true)) {
                    this.responsableField = value;
                    this.RaisePropertyChanged("responsable");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ProyectoWS.IProyectoService")]
    public interface IProyectoService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IProyectoService/CreaProyecto", ReplyAction="http://tempuri.org/IProyectoService/CreaProyectoResponse")]
        NiIdeaService.ProyectoWS.Proyecto CreaProyecto(string nombre, System.DateTime fecha_ini, System.DateTime fecha_fin, string responsable, string observacion, int codigo_c, int estado, bool cierreProyecto, string detalleProyecto);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IProyectoService/CreaProyecto", ReplyAction="http://tempuri.org/IProyectoService/CreaProyectoResponse")]
        System.Threading.Tasks.Task<NiIdeaService.ProyectoWS.Proyecto> CreaProyectoAsync(string nombre, System.DateTime fecha_ini, System.DateTime fecha_fin, string responsable, string observacion, int codigo_c, int estado, bool cierreProyecto, string detalleProyecto);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IProyectoService/ObtieneProyecto", ReplyAction="http://tempuri.org/IProyectoService/ObtieneProyectoResponse")]
        NiIdeaService.ProyectoWS.Proyecto ObtieneProyecto(int codigo_p);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IProyectoService/ObtieneProyecto", ReplyAction="http://tempuri.org/IProyectoService/ObtieneProyectoResponse")]
        System.Threading.Tasks.Task<NiIdeaService.ProyectoWS.Proyecto> ObtieneProyectoAsync(int codigo_p);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IProyectoService/ModificaProyecto", ReplyAction="http://tempuri.org/IProyectoService/ModificaProyectoResponse")]
        NiIdeaService.ProyectoWS.Proyecto ModificaProyecto(int codigo_p, string nombre, System.DateTime fecha_ini, System.DateTime fecha_fin, string responsable, string observacion, int codigo_c, int estado, bool cierreProyecto, string detalleProyecto);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IProyectoService/ModificaProyecto", ReplyAction="http://tempuri.org/IProyectoService/ModificaProyectoResponse")]
        System.Threading.Tasks.Task<NiIdeaService.ProyectoWS.Proyecto> ModificaProyectoAsync(int codigo_p, string nombre, System.DateTime fecha_ini, System.DateTime fecha_fin, string responsable, string observacion, int codigo_c, int estado, bool cierreProyecto, string detalleProyecto);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IProyectoService/EliminarProyecto", ReplyAction="http://tempuri.org/IProyectoService/EliminarProyectoResponse")]
        void EliminarProyecto(int codigo_p);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IProyectoService/EliminarProyecto", ReplyAction="http://tempuri.org/IProyectoService/EliminarProyectoResponse")]
        System.Threading.Tasks.Task EliminarProyectoAsync(int codigo_p);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IProyectoService/ListarProyecto", ReplyAction="http://tempuri.org/IProyectoService/ListarProyectoResponse")]
        NiIdeaService.ProyectoWS.Proyecto[] ListarProyecto();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IProyectoService/ListarProyecto", ReplyAction="http://tempuri.org/IProyectoService/ListarProyectoResponse")]
        System.Threading.Tasks.Task<NiIdeaService.ProyectoWS.Proyecto[]> ListarProyectoAsync();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IProyectoServiceChannel : NiIdeaService.ProyectoWS.IProyectoService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ProyectoServiceClient : System.ServiceModel.ClientBase<NiIdeaService.ProyectoWS.IProyectoService>, NiIdeaService.ProyectoWS.IProyectoService {
        
        public ProyectoServiceClient() {
        }
        
        public ProyectoServiceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public ProyectoServiceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ProyectoServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ProyectoServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public NiIdeaService.ProyectoWS.Proyecto CreaProyecto(string nombre, System.DateTime fecha_ini, System.DateTime fecha_fin, string responsable, string observacion, int codigo_c, int estado, bool cierreProyecto, string detalleProyecto) {
            return base.Channel.CreaProyecto(nombre, fecha_ini, fecha_fin, responsable, observacion, codigo_c, estado, cierreProyecto, detalleProyecto);
        }
        
        public System.Threading.Tasks.Task<NiIdeaService.ProyectoWS.Proyecto> CreaProyectoAsync(string nombre, System.DateTime fecha_ini, System.DateTime fecha_fin, string responsable, string observacion, int codigo_c, int estado, bool cierreProyecto, string detalleProyecto) {
            return base.Channel.CreaProyectoAsync(nombre, fecha_ini, fecha_fin, responsable, observacion, codigo_c, estado, cierreProyecto, detalleProyecto);
        }
        
        public NiIdeaService.ProyectoWS.Proyecto ObtieneProyecto(int codigo_p) {
            return base.Channel.ObtieneProyecto(codigo_p);
        }
        
        public System.Threading.Tasks.Task<NiIdeaService.ProyectoWS.Proyecto> ObtieneProyectoAsync(int codigo_p) {
            return base.Channel.ObtieneProyectoAsync(codigo_p);
        }
        
        public NiIdeaService.ProyectoWS.Proyecto ModificaProyecto(int codigo_p, string nombre, System.DateTime fecha_ini, System.DateTime fecha_fin, string responsable, string observacion, int codigo_c, int estado, bool cierreProyecto, string detalleProyecto) {
            return base.Channel.ModificaProyecto(codigo_p, nombre, fecha_ini, fecha_fin, responsable, observacion, codigo_c, estado, cierreProyecto, detalleProyecto);
        }
        
        public System.Threading.Tasks.Task<NiIdeaService.ProyectoWS.Proyecto> ModificaProyectoAsync(int codigo_p, string nombre, System.DateTime fecha_ini, System.DateTime fecha_fin, string responsable, string observacion, int codigo_c, int estado, bool cierreProyecto, string detalleProyecto) {
            return base.Channel.ModificaProyectoAsync(codigo_p, nombre, fecha_ini, fecha_fin, responsable, observacion, codigo_c, estado, cierreProyecto, detalleProyecto);
        }
        
        public void EliminarProyecto(int codigo_p) {
            base.Channel.EliminarProyecto(codigo_p);
        }
        
        public System.Threading.Tasks.Task EliminarProyectoAsync(int codigo_p) {
            return base.Channel.EliminarProyectoAsync(codigo_p);
        }
        
        public NiIdeaService.ProyectoWS.Proyecto[] ListarProyecto() {
            return base.Channel.ListarProyecto();
        }
        
        public System.Threading.Tasks.Task<NiIdeaService.ProyectoWS.Proyecto[]> ListarProyectoAsync() {
            return base.Channel.ListarProyectoAsync();
        }
    }
}