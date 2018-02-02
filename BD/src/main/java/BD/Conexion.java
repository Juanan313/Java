package BD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conexion {

    public static Connection conectarse( String args ) {
        Connection conexion = null;

        try {

            conexion = DriverManager.getConnection(args);

        } catch(SQLException except) {
            System.out.println("SQLException: " + except.getMessage());
            System.out.println("SQLState: " + except.getSQLState());
            System.out.println("VendorError: " + except.getErrorCode());
        }
        return conexion;
    }
}

