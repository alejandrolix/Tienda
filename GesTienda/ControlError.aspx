<%@ OutputCache Duration="1" VaryByParam="None" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlError.aspx.cs" Inherits="GesTienda.ControlError" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Control Error</title>
    <style>
        form {
            text-align: center;
        }

        h2 {
            margin-bottom: 40px;
        }

        #informacion {
            width: 50%;
            margin: 0 auto 0 auto;
            border: 1px solid #000000;
            text-align: left;
            padding: 10px 0 10px 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Aplicación Web GesTienda</h1>
            <h2>Error en tiempo de ejecución</h2>

            <div id="informacion">
                <p>Error ASP.NET:</p>
                <asp:Label runat="server" ID="lblErrorASP" ForeColor="Red"></asp:Label>

                <p>Error ADO.NET:</p>
                <asp:Label runat="server" ID="lblErrorADO" ForeColor="Red"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
