using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace biblioteca.Clases
{
    public class DBconn
    {
        public static SqlConnection obtenerConexion()
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["examfinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            return conexion;
        }


    }
}