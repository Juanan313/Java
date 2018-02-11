package mysqldb;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.Connection;


public class Query {

    public static void makeAQuery(Connection conex, String query) {

        
        

        if (conex != null) {
            Statement sentencia = null;
            ResultSet result = null;           

        try {
            sentencia = conex.createStatement();
            if (sentencia.execute(query)) {
                result = sentencia.getResultSet();
                while (result.next()) {
                    System.out.println("Id: "+result.getInt(1)+" Nombre:"+result.getString(2)+" Idioma: "+result.getString(3)+" categoría: "+result.getString(4)+" Rol: "+result.getString(5));
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