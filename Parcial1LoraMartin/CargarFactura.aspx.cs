using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial1LoraMartin
{
    public partial class CargarFactura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void calFechaVencimiento_SelectionChanged(object sender, EventArgs e)
        {
            lblFechaVencimiento.Text = $"Fecha de Vencimiento: {calFechaVencimiento.SelectedDate.ToShortDateString()}";
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string factura = txtFactura.Text;
            string proveedor = txtProveedor.Text;
            DateTime fechaVencimiento = calFechaVencimiento.SelectedDate;

            // Calcular la situación
            int diasDeAtraso = (DateTime.Today - fechaVencimiento).Days;
            int situacion = diasDeAtraso <= 30 ? 1 : 2;

            // Guardar en archivo de texto
            string rutaArchivo = Server.MapPath("~/Deudas.txt");
            using (StreamWriter writer = new StreamWriter(rutaArchivo, true))
            {
                writer.WriteLine($"{factura},{proveedor},{fechaVencimiento.ToShortDateString()},{situacion}");
            }

            // Limpiar campos y mostrar mensaje de éxito
            LimpiarCampos();
            lblMensaje.Text = "La factura se ha cargado con éxito.";
        }

        private void LimpiarCampos()
        {
            txtFactura.Text = string.Empty;
            txtProveedor.Text = string.Empty;
            lblFechaVencimiento.Text = string.Empty;
        }
    }
}