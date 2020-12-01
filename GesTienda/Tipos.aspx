<%@ Page Title="Tipos" Language="C#" MasterPageFile="~/MasterPageAdm.Master" AutoEventWireup="true" CodeBehind="Tipos.aspx.cs" Inherits="GesTienda.Tipos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Estilos/HojaEstilo.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
    <h3>Manipulación Tipos </h3>

    <div id="formulario">
        <label>ID </label>
        <asp:TextBox runat="server" ID="txtID" Width="320px"></asp:TextBox>
        <label>Descripción</label>
        <asp:TextBox runat="server" ID="txtDescripcion" Width="320px"></asp:TextBox>
    </div>
    <br />
    <br />
    <asp:Button runat="server" Text="Insertar" ID="btnInsertar" OnClick="btnInsertar_Click" />
    <asp:Button ID="btnBorrar" runat="server" Text="Borrar" OnClick="btnBorrar_Click" />
    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" />
    <br />
    <br />
    <asp:Label runat="server" ID="lblMensajes"></asp:Label>
    <asp:LinkButton runat="server" Text="Ir a Inicio" PostBackUrl="~/Default.aspx"></asp:LinkButton>

    <br />
    <br />    
</asp:Content>
