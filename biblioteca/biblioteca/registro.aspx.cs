using biblioteca.Clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace biblioteca
{
    public partial class registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregistrar_Click(object sender, EventArgs e)
        {
            ClsUsuario.Nombre = tnombre.Text;
            ClsUsuario.cedula = tcedula.Text;
            ClsUsuario.apellido = tapellido.Text;
            ClsUsuario.email = temail.Text;
            ClsUsuario.Clave = tclave.Text;



            if (ClsUsuario.RegistroPersona() > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Usuario ha sido registrado');", true);
            }
            else
            {
                //    lMsg.Text = "No se pudieron agregar los datos";
            }
            return;
        }

        protected void btnvolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}