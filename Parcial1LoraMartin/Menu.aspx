<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Parcial1LoraMartin.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div>
            <h2>Menú Principal</h2>
            <ul>
                <li><asp:HyperLink ID="lnkCargarFactura" runat="server" NavigateUrl="CargarFactura.aspx">Cargar Factura</asp:HyperLink></li>
                <li><asp:HyperLink ID="lnkMostrarDeudas" runat="server" NavigateUrl="MostrarDeudas.aspx">Mostrar Deudas</asp:HyperLink></li>
            </ul>
        </div>
    </form>
</body>
</html>
