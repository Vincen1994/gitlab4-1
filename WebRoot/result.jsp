<%@taglib uri="/struts-tags" prefix="s"%><%@ page language="java"
	import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title></title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<table align="center" border="1" style="width:80%;">
		<tr>
			<th colspan="10" align="center">DETAILS</th>
		</tr>
		<tr>
			<td>Title</td>
			<td>BFK</td>
			<td>ANAME</td>
			<td>AFK</td>
			<td>AGE</td>
			<td>country</td>
			<td>Publisher</td>
			<td>PD</td>
			<td>Price</td>
		</tr>
		<tr>
			<td><s:property value="Book.Title" /></td>
			<td><s:property value="Book.ISBN" /></td>
			<td><s:property value="Author.Name" /></td>
			<td><s:property value="Book.AuthorID" /></td>
			<td><s:property value="Author.Age" /></td>
			<td><s:property value="Author.Country" /></td>
			<td><s:property value="Book.Publisher" /></td>
			<td><s:property value="Book.Publishdate" /></td>
			<td><s:property value="Book.Price" /></td>
		</tr>
	</table>
	<form action="index.jsp" method="post">
		<input type="submit" value="Return" />
	</form>
</body>
</html>
