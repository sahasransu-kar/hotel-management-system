<%@ page import="java.sql.*" %>
<body bgcolor="red" text="blue">

<%
try
{
String s5=request.getParameter("fname");
String s6=request.getParameter("lname");
String s1=request.getParameter("email");
String s2=request.getParameter("username");
String s3=request.getParameter("phoneno");
String s4=request.getParameter("password");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:regdb");
Statement st=con.createStatement();
String qry="insert into register values('"+s5+"','"+s6+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"')";
int i =st.executeUpdate(qry);
out.println("<center><h1>Registered ");

st.close();
con.close();
}
catch(Exception e)
{
out.println(e);
}
%>
<a href='login.html'>Click Here</a>
</form>
</body>

