<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	out.println(path);
	out.println(basePath);
	out.println();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'userinfo.jsp' starting page</title>

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
	<%@ page import="sssm.dto.User"%>
	<%
		//out.println(request.getAttribute("uList"));

		List<User> users = (List<User>) request.getAttribute("uList");
		for(int i=0 ;i < users.size();i++){
			out.println("</br>");
			out.println(users.get(i).getName());
		}
	%>
	<c:out value="${users[0].name}"/>
	<c:forEach items="${users}" var="li">
${li.name}
<c:out value="${users}"/>
</c:forEach>
	<%
		out.println("good ");
	%>
</body>
</html>
