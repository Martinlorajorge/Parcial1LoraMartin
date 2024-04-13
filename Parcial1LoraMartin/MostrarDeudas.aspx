<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarDeudas.aspx.cs" Inherits="Parcial1LoraMartin.MostrarDeudas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Mostrar Deudas</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <thead>
                    <tr>
                        <th>Número de Factura</th>
                        <th>Proveedor</th>
                        <th>Fecha de Vencimiento</th>
                        <th>Situación</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Label ID="lblDeudas" runat="server" Text=""></asp:Label>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="4">
                            <br />
                            <a href="Menu.aspx">Volver al Menú</a>
                        </td>
                    </tr>
                </tfoot>
            </table>
        </div>
    </form>
</body>
</html>
