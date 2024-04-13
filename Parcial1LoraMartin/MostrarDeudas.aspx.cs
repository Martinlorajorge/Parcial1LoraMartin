using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial1LoraMartin
{
    public partial class MostrarDeudas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (File.Exists(Server.MapPath("~/Deudas.txt")))
            {
                StreamReader streamReader = new StreamReader(Server.MapPath("~/Deudas.txt"));
                string[] lines = streamReader.ReadToEnd().Split('\n');
                streamReader.Close();

                string deudas = "";

                foreach (string line in lines)
                {
                    string[] fields = line.Split(',');
                    if (fields.Length >= 3)
                    {
                        string situacion = CalcularSituacion(fields[2]); // fields[2] es la fecha de vencimiento
                        deudas += "<tr>";
                        deudas += $"<td>{fields[0]}</td>"; // Número de Factura
                        deudas += $"<td>{fields[1]}</td>"; // Proveedor
                        deudas += $"<td>{fields[2]}</td>"; // Fecha de Vencimiento
                        deudas += $"<td>{situacion}</td>"; // Situación
                        deudas += "</tr>";
                    }
                }

                lblDeudas.Text = deudas;
            }
            else
            {
                lblDeudas.Text = "<tr><td colspan='4'>No existen datos</td></tr>";
            }
        }

        private string CalcularSituacion(string fechaVencimientoStr)
        {
            DateTime fechaVencimiento = DateTime.Parse(fechaVencimientoStr);
            int diasDeAtraso = (DateTime.Today - fechaVencimiento).Days;
            if (diasDeAtraso <= 30)
            {
                return "1";
            }
            else
            {
                return "2";
            }
        }


    }
}