using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace biblioteca
{
    public partial class Catalogos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["usuariologueado"] != null)
            //{
            //    string usuariologueado = Session["usuariologueado"].ToString();
            //    lblBienvenida.Text = "Bienvenido/a: " + usuariologueado;
            //}
            //else
            //{
            //    Response.Redirect("Catalogos.aspx");
            //}

        }

        protected void btnautores_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cat_Articulos.aspx");
        }

        protected void btnlibros_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cat_Usuarios.aspx");

        }

        protected void btnagregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Agregar_Articulo.aspx");
        }

        protected void btnactualizar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Actualizar_Cat.aspx");

        }

        protected void btnborrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Borrar_Product.aspx");

        }

        protected void btnsalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}