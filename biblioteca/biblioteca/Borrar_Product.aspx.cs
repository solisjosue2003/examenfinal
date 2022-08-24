using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace biblioteca
{
    public partial class Borrar_Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnborrar_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete(); 
        }

        protected void btncerrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Catalogos.aspx");
        }
    }
}