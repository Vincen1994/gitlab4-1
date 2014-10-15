<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Search</title>
</head>
<body>
   <form action="BookAction" method="post">
   Enter The Title<br/>
      Title:<br/><input type="Title" name="Title"/><br/>
      <input type="submit" value="Find"/>		
   </form>
</body>
</html>