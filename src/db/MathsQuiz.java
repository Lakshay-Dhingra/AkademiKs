package db;

import java.sql.*;
import java.util.Random;

public class MathsQuiz
{
	public static String question;
	public static String a;
	public static String b;
	public static String c;
	public static String d;
	public static int answer_index;
	
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
	public static boolean createQuestion(int srno)
	{
		try(Connection conn=Connect.createConnection())
		{
			Statement  stmt = conn.createStatement( );
		    ResultSet  rs =stmt.executeQuery("select * from maths_ques where srno="+srno);
		    if(rs.next())
			{	
				question=rs.getString(2);
				a=rs.getString(3);
				b=rs.getString(4);
				c=rs.getString(5);
				d=rs.getString(6);
				answer_index=rs.getInt(7);
		    	return true;
			}
			else
			{	
				return false;
			}
		}
		catch(Exception e)
		{
			return false;
		}
	}
}