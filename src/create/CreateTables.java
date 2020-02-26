package create;

import java.sql.*;


public class CreateTables
{
	public static void main(String[] args)
	{
		try(Connection conn=Connect.createConnection())
		{
			Statement  stmt = conn.createStatement( );
			
			String q="create table Stud_Details (Roll varchar(25), Name varchar(40), Email varchar(50) primary key, Password varchar(20), Univ_Name varchar(60), Degree varchar(60))";
			stmt.executeUpdate(q);
			System.out.println("Stud_Details Created.");
			
			q="create table faculty_details(FId int(6) primary key, Name varchar(40),email varchar(50) unique not null, Password varchar(20), Deptt varchar(60), UId int(7) unique not null)";
			stmt.executeUpdate(q);
			System.out.println("Faculty_Details Created.");
			
			q="create table maths_ques(SrNo int(6) primary key,Question varchar(2048),A varchar(256),B varchar(256),C varchar(256),D varchar(256),Answer int(1))";
			stmt.executeUpdate(q);
			System.out.println("Maths_Ques Created.");
			
			q="create table physics_ques(SrNo int(6) primary key,Question varchar(2048),A varchar(256),B varchar(256),C varchar(256),D varchar(256),Answer int(1))";
			stmt.executeUpdate(q);
			System.out.println("Physics_Ques Created.");
		}
		catch(SQLException e)
		{
			e.printStackTrace();
//			System.out.println("error");
		}
		
	}
}