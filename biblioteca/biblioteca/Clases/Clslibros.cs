using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace biblioteca.Clases
{
    public class Clslibros
    {


        /*
        id int identity, 
        Nombre varchar(50) not null ,
        id_autor int, 
        Ubicacion varchar(30),
        Fecha datetime
          */
        private static int id { get; set; }
        private static string nombre { get; set; }
        private static string idautor { get; set; }
        private static string ubicacion { get; set; }
        private static string fecha { get; set; }


        public Clslibros(string nom, string ubi,string idauto, string date)
        {
            nombre = nom;
            idautor = idauto;
            ubicacion = ubi;
            fecha = date;
        }

        

        public static int Getid() { return id; }
        public static string Getnombre() { return nombre; }
        public static string getidautor() { return idautor; }
        public static string Getubicacion() { return ubicacion; }
        public static string Getfecha() { return fecha; }




        public static void Setnombre(string Nombre) { nombre = Nombre.Trim(); }
        public static void Setidautor(string Idautor) { idautor = Idautor.Trim(); }
        public static void Setubicacio(string Ubicacion) { ubicacion = Ubicacion.Trim(); }
        public static void Setfechao(string Fecha) { fecha = Fecha.Trim(); }


        public static int Ingreslibror()
        {

            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = Clases.DBconn.obtenerConexion())  // conexion
                {
                    SqlCommand cmd = new SqlCommand("Ingresar_libros", Conn)  // procedmiento almacenado
                    {
                        CommandType = CommandType.StoredProcedure  // tipo procedimiento almacenado
                    };
                    cmd.Parameters.Add(new SqlParameter("@nom", nombre));
                    cmd.Parameters.Add(new SqlParameter("@id", id));
                    cmd.Parameters.Add(new SqlParameter("@ubi", ubicacion));
                    cmd.Parameters.Add(new SqlParameter("@fecha", fecha));


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