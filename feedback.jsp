<%@ page import="java.sql.*" %>
<body bgcolor="red" text="blue">

<%
try
{
String s1=request.getParameter("firstname");
String s2=request.getParameter("lastname");
String s3=request.getParameter("username");
String s4=request.getParameter("subject");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:regdb");
Statement st=con.createStatement();
String qry="insert into feedback values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')";
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

