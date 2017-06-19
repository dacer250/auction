import com.frame.util.FileTool;
import com.frame.util.FileTools;

import java.sql.*;

/**
 * Created by Administrator on 2017/3/24.
 */
public class JDBC2008 {
    public static void main(String args[]) {
        // Create a variable for the connection string.
        String connectionUrl = "jdbc:sqlserver://183.61.146.17:1433;"
                + "databaseName=AdventureWorks;integratedSecurity=true;";

        String url = "jdbc:sqlserver://183.61.146.17:1433;databaseName=awqp_db;user=YYhnmj11_db;password=YYsjkmm9393_11";//sa身份连接

        // Declare the JDBC objects.
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            // Establish the connection.
            System.out.println("begin.");
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection(url);
            System.out.println("end.");

            // Create and execute an SQL statement that returns some data.
            String SQL = "SELECT Name FROM SysObjects Where XType='U' ORDER BY Name";
            stmt = con.createStatement();
            rs = stmt.executeQuery(SQL);

            ResultSet rs2 = null;
            Statement stmt2 = null;
            // Iterate through the data in the result set and display it.
            while (rs.next()) {
                System.out.println(rs.getString(1));
                if ("Bzw_UserID".equals(rs.getString(1))) {
                    continue;
                }

                FileTools.writeFile("d://dblog.txt", rs.getString(1)+"\n", true);


                SQL = "SELECT * FROM " + rs.getString(1);

                stmt2 = con.createStatement();
                rs2 = stmt2.executeQuery(SQL);

                ResultSetMetaData rsmd = rs2.getMetaData();
                int ci = rsmd.getColumnCount();
                String doc = "";
                for (int i = 0; i < ci; i++) {
                    doc = doc + rsmd.getColumnName(i+1) + "\t";
                }
                FileTools.writeFile("d://dblog.txt", doc+"\n", true);

                while (rs2.next()) {
                     doc = "";
                    for (int i = 0; i < ci; i++) {

                        doc = doc + rs2.getString(i + 1) + "\t";
                    }
                    FileTools.writeFile("d://dblog.txt", doc+"\n", true);

                }
                FileTools.writeFile("d://dblog.txt", "\n\n\n", true);

                if (rs2 != null)
                    try {
                        rs2.close();
                    } catch (Exception e) {
                    }
                if (stmt2 != null)
                    try {
                        stmt2.close();
                    } catch (Exception e) {
                    }

            }
        }

        // Handle any errors that may have occurred.
        catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null)
                try {
                    rs.close();
                } catch (Exception e) {
                }
            if (stmt != null)
                try {
                    stmt.close();
                } catch (Exception e) {
                }
            if (con != null)
                try {
                    con.close();
                } catch (Exception e) {
                }
        }
    }
}
