<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="menu_jsp.jsp" %>
Site du cours réseau ....

<br/>

<%
String a = (String)request.getAttribute("a");
String b = (String)request.getAttribute("b");
if(a!=null){
double x = Double.parseDouble(a);
out.println("La valuer de a est "+x);
}
if(b!=null){
double y = Double.parseDouble(b);
out.println("La valuer de b est "+y);
}
%>
<p>
Ici, je test Expression Language dans une JSP ....
${4*4}
J'accède au contenu de la valeur a ....<br/>
${a} 
Je montre les conditions ....
condition si la valeur de a est null ....<br/>
${empty a }
une autre directive .... if immédiat ....
${empty a ? "valeur de a est vide" : a}
La négation d'une assertion .....
${!empty a ?  a : "valeur de a est vide"}
<br/>
Traitement d'un tableau ....
${salutations[1]}
</p>

<br/>

<h1> Utilisation du langage JSTL .... </h1>

<c:out value="Salut les copains !"/>

<h1> Avantages de la balise JSTL ....</h1>

<c:out value="${salutations[1]}"/>

<br/>
Si la variable est vide, on ajoute une variable par défaut : 
<br/>
<c:out value="${salutations[4]}" default="La valeur par défaut"/>

<br/> 
Sin on va désactiver "faille xss" ....

<c:out value="<h1>${salutations}</h1>" default="Valeur par défaut" escapeXml="false"/>

<br/>
Une autre écriture de la valeur par défaut .... <br/>
<c:out value="${salutations[4]}" escapeXml="false"> Valeur par défaut </c:out>
 
</body>


</html>