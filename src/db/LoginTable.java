package db;

import java.sql.*;


public class LoginTable
{
	public static String authenticate(String person,String email,String password)
	{
		try(Connection conn=Connect.createConnection())
		{
			Statement  stmt = conn.createStatement( );
			if(person.equals("Student"))
			{
		    ResultSet  rs =stmt.executeQuery("select * from Stud_Details where Email='"+email+"'and Password='"+password+"'");
		    if(rs.next())
			{	
				return "true";
			}
			else
			{	
				return "false";
			}
			}
			else
			{
				ResultSet  rs =stmt.executeQuery("select * from faculty_Details where Email='"+email+"'and Password='"+password+"'");
			    if(rs.next())
				{	
					return "true";
				}
				else
				{	
					return "false";
				}
			}
		}
		catch(SQLException e)
		{
			return "Some Error Occured in fetching data...";
		}
		
	}
}
