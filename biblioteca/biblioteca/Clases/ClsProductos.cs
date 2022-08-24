using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace biblioteca.Clases
{
    public class ClsProductos
    {
        private static int codigo { get; set; }
        private static string descripcion { get; set; }
        private static int cantidad { get; set; }
        private static int precio { get; set; }
        private static int costo { get; set; }


        public ClsProductos(string descrip, int cant, int prec, int cost)
        {
            descripcion = descrip;
            cantidad = cant;
            precio = prec;
            costo = cost;

        }
        public ClsProductos() { }
        public static int Getcodiigo() { return codigo; }
        public static string Getdescripcion() { return descripcion; }
        public static int Getcantidad() { return cantidad; }
        public static int getprecio() { return precio; }
        public static int getcosto() { return costo; }


        public static void Setdescripcion(string Descripcion) {descripcion = Descripcion.Trim(); }
        public static void Setcantidad(int Cantidad) { cantidad =  Cantidad; }
        public static void Setnprecio(int Precio) { precio = Precio; }
        public static void Setncosto(int Costo) { costo = Costo; }


        public static int Ingresarproducto()
        {

            int retorno = 0;
            //int canti = Convert.ToInt32(cantidad);
            //int precioo = Convert.ToInt32(precio);
            //int contoo = Convert.ToInt32(costo); 

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = Clases.DBconn.obtenerConexion())  // conexion
                {
                    SqlCommand cmd = new SqlCommand("Ingresar_articulo", Conn)  // procedmiento almacenado
                    {
                        CommandType = CommandType.StoredProcedure  // tipo procedimiento almacenado
                    };
                    cmd.Parameters.Add(new SqlParameter("@descrip",descripcion));
                    cmd.Parameters.Add(new SqlParameter("@cant", Convert.ToInt32(cantidad)));
                    cmd.Parameters.Add(new SqlParameter("@preci", Convert.ToInt32(precio)));
                    cmd.Parameters.Add(new SqlParameter("@cost", Convert.ToInt32(costo)));


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