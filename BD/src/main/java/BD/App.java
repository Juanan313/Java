package BD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;

public class App {
    public static void main( String[] args ) {
       
       String rutaConexion = "jdbc:mysql://localhost/world?"+"user=root&password=Dual1718";
        Connection conex = Conexion.conectarse(rutaConexion);

        

        if (conex != null) {
            Statement sentencia = null;
            ResultSet result = null;
            String query = "SELECT * FROM city LIMIT 10";            

        try {
            sentencia = conex.createStatement();
            if (sentencia.execute(query)) {
                result = sentencia.getResultSet();
                while (result.next()) {
                    System.out.println("Id de la ciudad: "+result.getInt(1)+" Nombre de la ciudad"+result.getString(2));
                }
            }
        } catch(SQLException except) {
            System.out.println("SQLException: " + except.getMessage());
            System.out.println("SQLState: " + except.getSQLState());
            System.out.println("VendorError: " + except.getErrorCode());
        } finally {
            if (result != null) {
                try {
                    result.close();
                } catch (SQLException sqlEx) {
                } // ignore

                result = null;
            }

            if (sentencia != null) {
                try {
                    sentencia.close();
                } catch (SQLException sqlEx) {
                } // ignore

                sentencia = null;
            }

            if (conex != null) {
                try {
                    conex.close();
                } catch (SQLException sqlEx) {
                } // ignore

                conex = null;
            }

            }
        }
    }
}
