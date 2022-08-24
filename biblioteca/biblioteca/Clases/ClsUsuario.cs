using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace biblioteca.Clases
{
    public class ClsUsuario
    {

        /* Atributos de la clase usuario */
        private static string nombre { get; set; }
        private static string clave { get; set; }


        /* constructor de la clase */
        public ClsUsuario(string nom, string contrasena)
        {
            nombre = nom;
            clave = contrasena;
        }

        /* Metodos de la clase Get = devolver un valor  Set = Asignar un valor*/

        public static string GetNombre() { return nombre; }
        public static string GetClave() { return clave; }

        public static string cedula { get; set; }
        public static string Nombre { get; set; }
        public static string apellido { get; set; }
        public static string email { get; set; }
        public static string Clave { get; set; }
        public static void Setnombre(string nom)
        {
            nombre = nom;
        }
        public static void SetClave(String contrasena)
        {
            clave = contrasena;
        }

        public static string Getemail()
        {
            return email;
        }

        public static int RegistroPersona()
        {

            int retorno = 0; // devuelve si no lo hizo
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = Clases.DBconn.obtenerConexion())  // conexion
                {
                    SqlCommand cmd = new SqlCommand("Registro", Conn)  // procedmiento almacenado
                    {
                        CommandType = CommandType.StoredProcedure  // tipo procedimiento almacenado
                    };
                    cmd.Parameters.Add(new SqlParameter("@cedula", cedula));
                    cmd.Parameters.Add(new SqlParameter("@nombre", Nombre));
                    cmd.Parameters.Add(new SqlParameter("@Apellido", apellido));
                    cmd.Parameters.Add(new SqlParameter("@email", email));
                    cmd.Parameters.Add(new SqlParameter("@clave", Clave));


                    // retorno = cmd.ExecuteNonQuery();
                    using (SqlDataReader rdr = cmd.ExecuteReader())  // ejecutar
                    {
                        if (rdr.Read())
                        {

                            retorno = 1;  // devuelve 1 si funciono

                        }

                    }


                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
                Conn.Dispose();
            }

            return retorno;
        }

        public static Boolean Agregarusuario()
        {
            Boolean existe = false;
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["examfinalConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            try
            {

                conexion.Open();
                SqlCommand comando = new SqlCommand("insert into usuario  " +
                    "values ('" + nombre + "','" + clave + "')", conexion);
                comando.ExecuteNonQuery();
                existe = true;

            }
            catch (Exception)
            {
                conexion.Close();
            }
            finally
            {
                conexion.Close();
            }
            return existe;






        }
    }
}