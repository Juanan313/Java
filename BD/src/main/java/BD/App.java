package BD;

import java.sql.Connection;



public class App {
    public static void main( String[] args ) {
       
        String rutaConexion = "jdbc:mysql://localhost/driverol?"+"user=root&password=1234";
        Connection conex = Conexion.conectarse(rutaConexion);
        String query = "SELECT * FROM libros";
        String queryMasters = "SELECT * FROM Master";
        String valor = "Hombre";
        String sql = "SELECT * FROM driverol.libros WHERE libros.rol_Nombre LIKE '%"+valor+"%'";

        Query.makeAQuery(conex, sql);
    }
}
