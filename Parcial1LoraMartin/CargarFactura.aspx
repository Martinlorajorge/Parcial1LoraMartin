<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CargarFactura.aspx.cs" Inherits="Parcial1LoraMartin.CargarFactura" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Cargar Factura</h2>
            <asp:TextBox ID="txtFactura" runat="server" placeholder="Número de Factura"></asp:TextBox><br />
            <asp:TextBox ID="txtProveedor" runat="server" placeholder="Nombre del Proveedor"></asp:TextBox><br />
            <asp:Label ID="lblFechaVencimiento" runat="server" Text="Fecha de Vencimiento:"></asp:Label>
            <asp:Calendar ID="calFechaVencimiento" runat="server" OnSelectionChanged="calFechaVencimiento_SelectionChanged"></asp:Calendar>
            <br />
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
            <asp:Label ID="lblMensaje" runat="server" Text="" ForeColor="Green"></asp:Label>
            <br />
            <a href="Menu.aspx">Volver al Menú</a>
        </div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
    </form>
</body>
</html>
