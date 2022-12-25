<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@ page import="pkg.ResourceDao"%>
<%@ page import="pkg.ResourceDto"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
	<%
//EducationDao dao = new EducationDao();
//EducationDto dto = new EducationDto();
//String id = "S000000001";
//dto = dao.selectOne(id);
//out.print("llll:"+dto.getOfficeName());


%>
	<form action="ResourceApp.jsp" method="post">
		<label>장소 별 인구분포도</label> 
		<select id="SearchList" name="SearchList">
			<option value="all">전체</option>
		</select> <input type="submit" value="검색">
	</form>



</body>
</html>