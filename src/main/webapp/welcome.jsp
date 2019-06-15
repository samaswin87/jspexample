<html>
<body>
	<%@page import="java.util.Date" %>
	<%!
	String printName(String name){
		 return "welcome " + name;
	}
	%>
	
	<%
		String name=request.getParameter("uname");  
		out.print(printName(name));
	%>
	<br/>
	Today is: <%= new Date() %>
	
	<%
		response.addCookie(new Cookie(config.getInitParameter("cookie"), name));
	%>
	
	<br/>
	<a href="session.jsp"> Click here to go to session page</a>
	
	<%
		session.setAttribute("name", name);  
		  
	%>
</body>
</html>