<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
Je suis dans la JSP .....
<%
// on écrit ici du code java ....
out.println("<br/>"); 
String prenom = (String)request.getAttribute("prenom");
out.println("Bonjour " + prenom);
%>

<p>


</p>
<%
for(int i=1; i<=44; i++){
	out.println(prenom);
out.println("<br/>");
}
%>
</body>
</html>