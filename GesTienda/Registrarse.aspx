<%@ OutputCache Duration="1" VaryByParam="None" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="GesTienda.Registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link href="Estilos/HojaEstilo.css" rel="stylesheet" />
        <title>Registrarse</title>
        <style>
            h2, h3 {
                text-align: center;
            }

            h2 {
                margin-top: 3rem;
                font-size: 1.9em;
            }

            h3 {
                margin-bottom: 2rem;
            }

            #formulario {
                display: grid;
                grid-template-columns: auto auto;
                grid-template-rows: auto auto auto auto auto auto auto auto auto;                
                width: 50%;
                margin: 0 auto;
                grid-column-gap: 15px;
                grid-row-gap: 15px;
            }

            #formulario label {
                text-align: right;
                font-weight: bold;
            }

            #formulario input {
                justify-self: start;
            }

            #btnInsertar {
                display: block;
                margin: 25px auto 0 auto;
            }

            a {
                display: block;
                margin-top: 3rem;
                text-align: center;
            }

            #lblMensajes {
                display: block;
                text-align: center;
                color: red;
                margin-top: 20px;
                font-size: 1.1em;
            }
        </style>
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
                <br />
                <div id="cabecera">
                    <div id="cabecera1">
                        <br />
                        comerciodaw.com &nbsp;
                    </div>
                    <div id="cabecera2">
                        <br />
                        &nbsp;&nbsp;TIENDA ONLINE - SHOPPING DAW<br />
                        <br />
                    </div>
                </div>

                <h2>GesTienda</h2>
                <h3>Registro de Usuario</h3>
                
                <div id="formulario">
                    <label>Correo Electrónico</label>
                    <asp:TextBox runat="server" ID="txtCorCli" Width="320px"></asp:TextBox>

                    <label>Contraseña</label>
                    <asp:TextBox runat="server" ID="txtPassword1" TextMode="Password"></asp:TextBox>

                    <label>Introduzca nuevamente la contraseña</label>
                    <asp:TextBox runat="server" ID="txtPassword2" TextMode="Password"></asp:TextBox>                    

                    <label>NIF/NIE/CIF</label>
                    <asp:TextBox runat="server" Width="300px" ID="txtIdCliente"></asp:TextBox>

                    <label>Nombre/Razón Social</label>
                    <asp:TextBox runat="server" Width="430px" ID="txtNomCli"></asp:TextBox>

                    <label>Dirección</label>
                    <asp:TextBox runat="server" Width="410px" ID="txtDirCli"></asp:TextBox>

                    <label>Población</label>
                    <asp:TextBox runat="server" ID="txtPobCli" Width="370px"></asp:TextBox>

                    <label>Código Postal</label>
                    <asp:TextBox runat="server" ID="txtCpoCli" Width="100px"></asp:TextBox>

                    <label>Teléfono</label>
                    <asp:TextBox runat="server" ID="txtTelCli" Width="200px"></asp:TextBox>
                </div>                                

                <asp:Button runat="server" Text="Insertar" ID="btnInsertar" OnClick="btnInsertar_Click" />
                <asp:Label runat="server" ID="lblMensajes"></asp:Label>
                <asp:LinkButton runat="server" Text="Ir a Inicio" PostBackUrl="~/Default.aspx"></asp:LinkButton>

                <br />
                <br />

                <div id="pie">
                    <br />
                    <br />
                    © Desarrollo de Aplicaciones Web interactivas con Acceso a Datos
                    <br />
                    IES Mare Nostrum (Alicante)
                </div>
            </div>
        </form>
    </body>
</html>
