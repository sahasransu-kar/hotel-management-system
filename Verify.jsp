<%@ page language='java' import='java.sql.*' %>
<%
     try
      {
	String t1=request.getParameter("uname").trim();
	String t2=request.getParameter("pwd").trim();

	if(t1.length()!=0)
	 {
	         if(t2.length()!=0)
	          {
		if(t1.equals("Admin") && t2.equals("Admin"))
		 {
		             session.setAttribute("usr","Administrator");
		             response.sendRedirect("page1.html");
		 }
		else
		 {
		 	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection cn=DriverManager.getConnection("jdbc:odbc:regdb");
		Statement stmt=cn.createStatement();
		String str="select username,password from register where username='"+t1+"' and password='"+t2+"'";
		ResultSet rs=stmt.executeQuery(str);
		int c=0;
		if(rs.next())
		 {
		          c++;
			session.setAttribute("uid",rs.getString(1));
			session.setAttribute("upwd",rs.getString(2));
	
		 }

		stmt.close();
		cn.close();

		if(c==0)
		 {
              session.setAttribute("msg","InValid UserName/PassWord are Entered...");
	           response.sendRedirect("ErrorPage.jsp");
		 }
		else
		 {
			response.sendRedirect("page1.html");
		 }
           	                }
	          }
	         else
	          {
	           session.setAttribute("msg","PassWord is Not Specified...");
	           response.sendRedirect("ErrorPage.jsp");
	          }
	 }
	else
	 {
	           session.setAttribute("msg","UserName is Not Specified...");
	           response.sendRedirect("ErrorPage.jsp");
	 }
      }
     catch(Exception e)
      {
	           session.setAttribute("msg","Error in Validating the Page...");
	           response.sendRedirect("ErrorPage.jsp");
      }
%>