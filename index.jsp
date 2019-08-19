<%@ page import="java.sql.*" %>
<body bgcolor="red" text="blue">

<%
try
{
String s1=request.getParameter("first-name");
String s2=request.getParameter("last-name");
String s3=request.getParameter("email");
String s4=request.getParameter("phone");
String s5=request.getParameter("message");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:regdb");
Statement st=con.createStatement();
String qry="insert into indaxdb values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')";
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
<a href='page1.html'>Click Here</a>
</form>
</body>

