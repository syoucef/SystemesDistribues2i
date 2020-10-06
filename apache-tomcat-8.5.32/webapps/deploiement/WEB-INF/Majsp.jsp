<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; 
charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Pour réaliser les inclusions des pages jsp
on utilise la directive suivante ....
 -->
 <%@ include file="menu_jsp.jsp" %>
<% 
 String prenom = (String)request.getAttribute("prenom");
//out.println(prenom);
 %>
<h1> Salut les amis ! </h1>
 <h1> Salut <%out.println(prenom); %>
  ! </h1>
  
  <% 
  ArrayList liste = new ArrayList();
  liste.add("Bonjour"); liste.add("Bonsoir"); liste.add("Bonne nuit");
  
  for(int i=0; i<liste.size(); i++){
	  out.println("<br/>");
	  out.println(liste.get(i));
  }
  %>
  
  <p>
  <%
  String cours = (String)request.getAttribute("cours");
  
  if (cours.equals("Systèmes Distribués"))
	  out.println("Bienvenue dans le cours de systèmes ditribués !");
  else 
	  out.println("Bienvenue dans le cours de réseaux informatiques !");
  %>
  </p>
</body>
</html>