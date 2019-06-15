<html>
<body>
	<%@ page errorPage="error.jsp"%>
	<%
		String name = (String) session.getAttribute("name");
		out.print("welcome " + name + " to the session page");

		if (name.equals("test")) {
			throw new Exception();
		}
	%>


</body>
</html>