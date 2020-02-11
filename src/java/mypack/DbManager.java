package mypack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DbManager
{
    PreparedStatement ps;
    ResultSet rs=null;
    Connection con=null;
    private String query;
    public DbManager() throws ClassNotFoundException, SQLException//contructor
  {
        this.ps = null;
  Class.forName("com.mysql.jdbc.Driver");
  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/karamdb","root", "");
    }
public boolean nonQuery(String query) throws SQLException
        {
              ps=con.prepareStatement(query);
        if(ps.executeUpdate()>0)
        {
        return true;
        }
        else
        {
            return false;
        }

 
       }
public ResultSet executeQuery(String query) throws SQLException
{
ps=con.prepareStatement(query);
rs=ps.executeQuery();
return rs;
}
public String getDate()
{
Date d=new Date();
SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
return (df.format(d));
}
}

