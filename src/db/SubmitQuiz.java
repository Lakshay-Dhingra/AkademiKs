package db;

import java.sql.*;


public class SubmitQuiz
{
	
	public static boolean saveData(int srno,String question,String a,String b,String c,String d,int ans)
	{
		try(Connection conn=Connect.createConnection())
		{
			Statement  stmt = conn.createStatement();
			stmt.executeUpdate("INSERT INTO maths_ques values("+srno+",'"+question+"','"+a+"','"+b+"','"+c+"','"+d+"',"+ans+")");
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}

	public static int getMaxSrNo()
	{
		try(Connection conn=Connect.createConnection())
		{
			Statement  stmt = conn.createStatement( );
		    ResultSet  rs =stmt.executeQuery("select max(srno) from maths_ques");
		    if(rs.next())
			{	
				return rs.getInt(1);
			}
			else
			{	
				return 0;
			}
		}
		catch(Exception e)
		{
			return 0;
		}
	}
}