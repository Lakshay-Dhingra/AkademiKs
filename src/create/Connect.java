package create;
import java.sql.*;

public class Connect
{
public static Connection createConnection()
{
	Connection con=null;
	try
	{
		try 
		{
		   Class.forName("com.mysql.jdbc.Driver");
		}
		catch(ClassNotFoundException ex)
		{
		   System.out.println("Error: unable to load driver class!");
		   System.exit(1);
		}			
	     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Akademiks","root","root");
	}
	catch(SQLException sqe)
	{
	  sqe.printStackTrace();
	}
	return con;
}
}
