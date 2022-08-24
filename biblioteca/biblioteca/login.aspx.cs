using biblioteca.Clases;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace biblioteca
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btningresar_Click(object sender, EventArgs e)
        {
            
            ClsUsuario.Setnombre(tusuario.Text);
            ClsUsuario.SetClave(tcontraseña.Text);

            string s = System.Configuration.ConfigurationManager.ConnectionStrings["examfinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            try
            {

                conexion.Open();
                SqlCommand comando = new SqlCommand("select nombre, clave from Usuario  " +
                    "where nombre =  '" + ClsUsuario.GetNombre() + "'   and clave = '" + ClsUsuario.GetClave() + "'", conexion);
                SqlDataReader registro = comando.ExecuteReader();
                if (registro.Read())
                {
                    Response.Redirect("Catalogos.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Usuario no existe');", true);
                }
            }
            catch (Exception)
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Revisar la conexion');", true);
            }
            finally
            {
                conexion.Close();
            }
        }

        protected void btnregistrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("registro.aspx");
        }
    }
}