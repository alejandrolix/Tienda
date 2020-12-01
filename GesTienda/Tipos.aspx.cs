using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace GesTienda
{
    public partial class Tipos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsertar_Click(object sender, EventArgs e)
        {
            lblMensajes.Text = "";
            string error;
            string id = txtID.Text;
            string descripcion = txtDescripcion.Text;
            string cadena = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string instruccion = $"INSERT TIPO (IdTipo, DesTip) VALUES ('{id}','{descripcion}')";
            using (SqlConnection con = new SqlConnection (cadena))
            {
                try
                {
                    con.Open();
                    SqlCommand comando = con.CreateCommand();
                    comando.CommandText = instruccion;

                    int filasafectadas = comando.ExecuteNonQuery();
                    if(filasafectadas == 1)
                    {
                        lblMensajes.Text = "El tipo se ha insertado correctamente";
                    }
                    else
                    {
                        lblMensajes.Text = "Ha habido un error al insertar el tipo";
                    }
                }
                catch (SqlException ex)
                {
                    error = "No se ha podido conectar con la base de datos";
                    error += "<div> Código: " + ex.Number + "</div>";
                    error += "<div> Descripción: " + ex.Message + "</div>";
                    lblMensajes.Text = error;
                    return;
                }
            }
        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            lblMensajes.Text = "";
            string error;
            string id = txtID.Text;
            string descripcion = txtDescripcion.Text;
            string cadena = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string instruccion = $"DELETE TIPO WHERE IdTipo = '{id}'";

            using (SqlConnection con = new SqlConnection(cadena))
            {
                try
                {
                    con.Open();
                    SqlCommand comando = con.CreateCommand();
                    comando.CommandText = instruccion;

                    int filasafectadas = comando.ExecuteNonQuery();
                    if (filasafectadas == 1)
                    {
                        lblMensajes.Text = "El tipo se ha borrado";
                    }
                    else
                    {
                        lblMensajes.Text = "Ha habido un error al borrar el tipo";
                    }
                }
                catch (SqlException ex)
                {
                    error = "No se ha podido conectar con la base de datos";
                    error += "<div> Código: " + ex.Number + "</div>";
                    error += "<div> Descripción: " + ex.Message + "</div>";
                    lblMensajes.Text = error;
                    return;
                }
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {

        }
    }
}