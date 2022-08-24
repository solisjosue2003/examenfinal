using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace biblioteca
{
    public class ClsAutor
    {

        private static int id { get; set; }
        private static string cedula { get; set; }
        private static string nombre { get; set; }
        private static string nacionalidad { get; set; }


        public ClsAutor(string ced, string nom, string nacion)
        {
            cedula = ced;
            nombre = nom;
            nacionalidad = nacion;
        }

        public ClsAutor()
        {

        }


        public static int Getid() { return id; }
        public static string Getcedula() { return cedula; }

        internal static int Ingresarproducto()
        {
            throw new NotImplementedException();
        }

        public static string Getnombre() { return nombre; }
        public static string Nacionalidad() { return nacionalidad; }

        public static void Setcedula(string Cedula) { cedula = Cedula.Trim(); }
        public static void Setnombre(string Nombre) { nombre = Nombre.Trim(); }
        public static void Setnacionalidad(string Nacionalidad) { nacionalidad = Nacionalidad.Trim(); }

        public static int Ingresarautor()
        {

            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = Clases.DBconn.obtenerConexion())  // conexion
                {
                    SqlCommand cmd = new SqlCommand("Ingresar_autores", Conn)  // procedmiento almacenado
                    {
                        CommandType = CommandType.StoredProcedure  // tipo procedimiento almacenado
                    };
                    cmd.Parameters.Add(new SqlParameter("@ced", cedula));
                    cmd.Parameters.Add(new SqlParameter("@nom", nombre));
                    cmd.Parameters.Add(new SqlParameter("@nacion", nacionalidad));

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


    }
    
}

