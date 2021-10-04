<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <jsp:forward page="/Test.do"/> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>simple-framework</title>
</head>
<body>
	<input type="button" value="test" onclick="location.href='<%=request.getContextPath()%>/test/Test.do'"/>
	<input type="button" value="grid" onclick="location.href='<%=request.getContextPath()%>/test/grid.do'"/>
</body>
</html>