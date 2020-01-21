package db;

import java.sql.*;


public class RegisterTable
{
	public static String authenticate(String univ,String degree,String name,String roll,String email,String password)
	{
		try(Connection conn=Connect.createConnection())
		{
			Statement  stmt = conn.createStatement( );
			
		    ResultSet  rs1 =stmt.executeQuery("select * from Stud_Details where Univ_Name='"+univ+"'and Roll='"+roll+"'");
		    if(rs1.next())
			{	
				return "univroll";
			}
		    ResultSet  rs2 =stmt.executeQuery("select * from Stud_Details where Email='"+email+"'");
		    if(rs2.next())
			{	
				return "myemail";
			}
			stmt.executeUpdate("INSERT INTO stud_details values('"+roll+"', '"+name+"', '"+email+"', '"+password+"', '"+univ+"', '"+degree+"')");
		    return "true";
		}
		catch(SQLException e)
		{
			return "error";
		}
		
	}
}
