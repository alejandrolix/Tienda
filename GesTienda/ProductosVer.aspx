<%@ OutputCache Duration="1" VaryByParam="None" %>
<%@ Page Title="Productos" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProductosVer.aspx.cs" Inherits="GesTienda.ProductosVer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .contenidotitulo {
            text-align: center;
            margin-bottom: 15px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
    <div class="contenidotitulo">Productos</div>
    <asp:Label ID="lblResultado" runat="server"></asp:Label>
    <br />
    <asp:Label ID="lblMensajes" ForeColor="red" runat="server"></asp:Label>
</asp:Content>
