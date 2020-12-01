<%@ OutputCache Duration="1" VaryByParam="None" %>
<%@ Page Title="Mantenimiento productos" Language="C#" MasterPageFile="~/MasterPageAdm.Master" AutoEventWireup="true" CodeBehind="ProductosMantener.aspx.cs" Inherits="GesTienda.ProductosMantener" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #productos {
            float: left;
            width: 50%;
        }

        #detalle {
            float: left;
            display: grid;
            grid-template-columns: auto auto;
            grid-template-rows: auto auto auto auto auto auto;
            grid-column-gap: 10px;
            grid-row-gap: 10px;
            margin-left: 5rem;
            width: 40%;
        }

        #detalle span {
            text-align: right;
            font-weight: bold;
        }

        #InfoContenido_txtIdProducto {
            justify-self: start;
        }

        #InfoContenido_txtDesPro {
            justify-self: start;
        }

        #InfoContenido_txtPrePro {
            justify-self: start;
        }

        #InfoContenido_ddlIdUnidad {
            justify-self: start;
        }

        #InfoContenido_ddlIdTipo {
            justify-self: start;
        }

        #botones {
            grid-column: 2 / 3;
        }

        input[type=submit] {
            justify-self: start;
        }

        #limpiarFloat {
            clear: both;            
            padding-top: 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
    <h1>Mantenimiento productos</h1>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdProducto], [DesPro], [PrePro] FROM [PRODUCTO]"></asp:SqlDataSource>
    <div id="productos">
        <asp:GridView ID="grdProductos" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" OnSelectedIndexChanged="grdProductos_SelectedIndexChanged" DataKeyNames="IdProducto" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PagerSettings-FirstPageText="Primero" PagerSettings-LastPageText="Último" PagerSettings-Mode="NextPreviousFirstLast" PagerSettings-NextPageText="Siguiente" PagerSettings-PreviousPageText="Anterior" Width="100%">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="IdProducto" HeaderText="Id producto" ReadOnly="True" SortExpression="IdProducto" />
                <asp:BoundField DataField="DesPro" HeaderText="Descripción" SortExpression="DesPro" />
                <asp:BoundField DataField="PrePro" HeaderText="Precio" SortExpression="PrePro" DataFormatString="{0:c2}">
                    <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />

            <PagerSettings FirstPageText="Primero" LastPageText="&#218;ltimo" Mode="NextPreviousFirstLast" NextPageText="Siguiente" PreviousPageText="Anterior"></PagerSettings>

            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </div>
    <div id="detalle">
        <asp:Label runat="server" ID="lblIdProducto" Text="Id. Producto"></asp:Label>
        <asp:TextBox runat="server" ID="txtIdProducto" Enabled="false"></asp:TextBox>

        <asp:Label runat="server" ID="lblDesPro" Text="Descripción"></asp:Label>
        <asp:TextBox runat="server" ID="txtDesPro" Width="300px" Enabled="false"></asp:TextBox>

        <asp:Label runat="server" ID="lblPrePro" Text="Precio"></asp:Label>
        <asp:TextBox runat="server" ID="txtPrePro" Enabled="false"></asp:TextBox>

        <asp:Label runat="server" ID="lblIdUnidad" Text="Unidad"></asp:Label>
        <asp:DropDownList runat="server" ID="ddlIdUnidad" Enabled="False" DataSourceID="SqlDataSource2" DataTextField="IdUnidad" DataValueField="IdUnidad"></asp:DropDownList>

        <asp:Label runat="server" ID="lblIdTipo" Text="Tipo Producto"></asp:Label>
        <asp:DropDownList runat="server" ID="ddlIdTipo" Enabled="False" DataSourceID="SqlDataSource3" DataTextField="DesTip" DataValueField="IdTipo"></asp:DropDownList>
        <div id="botones">
            <asp:Button runat="server" ID="btnNuevo" Text="Nuevo" Visible="true" OnClick="btnNuevo_Click" />
            <asp:Button runat="server" ID="btnEditar" Text="Editar" Visible="false" OnClick="btnEditar_Click" />
            <asp:Button runat="server" ID="btnEliminar" Text="Eliminar" Visible="false" OnClick="btnEliminar_Click" />
            <asp:Button runat="server" ID="btnInsertar" Text="Insertar" Visible="false" OnClick="btnInsertar_Click" />
            <asp:Button runat="server" ID="btnModificar" Text="Modificar" Visible="false" OnClick="btnModificar_Click" />
            <asp:Button runat="server" ID="btnBorrar" Text="Borrar" Visible="false" OnClick="btnBorrar_Click" />
            <asp:Button runat="server" ID="btnCancelar" Text="Cancelar" Visible="false" OnClick="btnCancelar_Click" />
        </div>
    </div>

    <div id="limpiarFloat">
        <asp:Label ID="lblResultado" runat="server"></asp:Label>
        <asp:Label ID="lblMensajes" ForeColor="red" runat="server"></asp:Label>
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdUnidad] FROM [UNIDAD]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdTipo], [DesTip] FROM [TIPO]"></asp:SqlDataSource>    
</asp:Content>
