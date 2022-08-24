using biblioteca.Clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace biblioteca
{
    public partial class Agregar_Articulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btningresar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();

            //ClsProductos cs = new ClsProductos(tdescrip.Text, Convert.ToInt32(tcant.Text), Convert.ToInt32(tprecio.Text), Convert.ToInt32(tcost.Text)); ;
            //tdescrip.Text = "";
            //tcant.Text = "";
            //tprecio.Text = "";
            //tcost.Text = "";
            //try
            //{
            //    if (ClsAutor.Ingresarproducto() > 0)
            //    {
            //        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Producto ingresado');", true);
            //        GridView1.DataBind();
            //    }
            //}
            //catch (Exception)
            //{

            //    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Revise su conexion');", true);
            //}
            //finally
            //{
            //    GridView1.DataBind();
            //}
        }

        protected void btncerrar_Click(object sender, EventArgs e)
        {
                  
            Response.Redirect("Catalogos.aspx");
           

        }
    }
}