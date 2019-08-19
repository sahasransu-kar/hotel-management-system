import java.sql.*;
public class ConnectionDemo
{
public static void main(String args[])
{
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:hoteldb");
Statement st=con.createStatement();
String qry="create table student(sno int,sname varchar(20),tot int)";
boolean flag=st.execute(qry);
System.out.println("Table created");
st.close();
con.close();
}
catch(Exception e)
{
System.out.println(e);
}
}
}