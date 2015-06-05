﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18444
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ComercialServiceTest.ComercialService {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Cliente", Namespace="http://schemas.datacontract.org/2004/07/NiIdeaService.Dominio")]
    [System.SerializableAttribute()]
    public partial class Cliente : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int CodigoField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string CorreoField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string DireccionField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string RazonSocialField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string RucField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string TelefonoField;
        
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
        public int Codigo {
            get {
                return this.CodigoField;
            }
            set {
                if ((this.CodigoField.Equals(value) != true)) {
                    this.CodigoField = value;
                    this.RaisePropertyChanged("Codigo");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Correo {
            get {
                return this.CorreoField;
            }
            set {
                if ((object.ReferenceEquals(this.CorreoField, value) != true)) {
                    this.CorreoField = value;
                    this.RaisePropertyChanged("Correo");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Direccion {
            get {
                return this.DireccionField;
            }
            set {
                if ((object.ReferenceEquals(this.DireccionField, value) != true)) {
                    this.DireccionField = value;
                    this.RaisePropertyChanged("Direccion");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string RazonSocial {
            get {
                return this.RazonSocialField;
            }
            set {
                if ((object.ReferenceEquals(this.RazonSocialField, value) != true)) {
                    this.RazonSocialField = value;
                    this.RaisePropertyChanged("RazonSocial");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Ruc {
            get {
                return this.RucField;
            }
            set {
                if ((object.ReferenceEquals(this.RucField, value) != true)) {
                    this.RucField = value;
                    this.RaisePropertyChanged("Ruc");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string Telefono {
            get {
                return this.TelefonoField;
            }
            set {
                if ((object.ReferenceEquals(this.TelefonoField, value) != true)) {
                    this.TelefonoField = value;
                    this.RaisePropertyChanged("Telefono");
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
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ComercialService.IComercialService")]
    public interface IComercialService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IComercialService/ObtenerCliente", ReplyAction="http://tempuri.org/IComercialService/ObtenerClienteResponse")]
        ComercialServiceTest.ComercialService.Cliente ObtenerCliente(int codigo);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IComercialService/ObtenerCliente", ReplyAction="http://tempuri.org/IComercialService/ObtenerClienteResponse")]
        System.Threading.Tasks.Task<ComercialServiceTest.ComercialService.Cliente> ObtenerClienteAsync(int codigo);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IComercialService/ListarClientes", ReplyAction="http://tempuri.org/IComercialService/ListarClientesResponse")]
        ComercialServiceTest.ComercialService.Cliente[] ListarClientes();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IComercialService/ListarClientes", ReplyAction="http://tempuri.org/IComercialService/ListarClientesResponse")]
        System.Threading.Tasks.Task<ComercialServiceTest.ComercialService.Cliente[]> ListarClientesAsync();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IComercialServiceChannel : ComercialServiceTest.ComercialService.IComercialService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ComercialServiceClient : System.ServiceModel.ClientBase<ComercialServiceTest.ComercialService.IComercialService>, ComercialServiceTest.ComercialService.IComercialService {
        
        public ComercialServiceClient() {
        }
        
        public ComercialServiceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public ComercialServiceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ComercialServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ComercialServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public ComercialServiceTest.ComercialService.Cliente ObtenerCliente(int codigo) {
            return base.Channel.ObtenerCliente(codigo);
        }
        
        public System.Threading.Tasks.Task<ComercialServiceTest.ComercialService.Cliente> ObtenerClienteAsync(int codigo) {
            return base.Channel.ObtenerClienteAsync(codigo);
        }
        
        public ComercialServiceTest.ComercialService.Cliente[] ListarClientes() {
            return base.Channel.ListarClientes();
        }
        
        public System.Threading.Tasks.Task<ComercialServiceTest.ComercialService.Cliente[]> ListarClientesAsync() {
            return base.Channel.ListarClientesAsync();
        }
    }
}