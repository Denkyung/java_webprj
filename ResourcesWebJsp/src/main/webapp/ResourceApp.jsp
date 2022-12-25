<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>  
<%@ page import="pkg.ResourceDao"%>
<%@ page import="pkg.ResourceDto"%>
<% 
ResourceDao rd = new ResourceDao();
ResourceDto rt = new ResourceDto();

List<ResourceDto> SearchList = new ArrayList<>();
List<ResourceDto> EveryList = new ArrayList<>();

String delete = request.getParameter("deleteCITIES");
out.print(delete);
boolean isSuccess = rd.deleteResource(delete);
String output = request.getParameter("SearchList");
out.print(output);

if (output.equals("all")){
	EveryList = rd.retrieveResource();
}

%>

<!DOCTYPE html>
<html>
<head>
<%-- 부트 스트랩 이용 --%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<%-- meta 태그 이용하기 --%>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


<meta charset="UTF-8">
<title>ResourceApp </title>
<script type="text/javascript">
function delete_List(CITIES) {
	rt.setCITIES(CITIES);
	boolean isSuccess = rd.deleteResource(rt)
	
}
</script>
<style>
	
</style>
</head>
<body>
	<div>

	<table id="container_1">
		<tr>
			<th>CITIES</th>
			<th>Multi_num</th>
			<th>Multi_num_mem</th>
			<th>Mul_indi</th>
			<th>Mul_emi</th>
			<th>Mul_married</th>
			<th>Mul_etc</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<tr>
		
		</tr>
		<%-- 
		<%
    for( ResourceDto dt : EveryList ){
		%>
		<tr>
			<td><%= dt.getCITIES() %></td>
			<td><%= dt.getMulti_num() %></td>
			<td><%= dt.getMulti_num_mem() %></td>
			<td><%= dt.getMul_indi() %></td>
			<td><%= dt.getMul_emi() %></td>
			<td><%= dt.getMul_married() %></td>
			<td><%= dt.getMul_etc() %></td>
			<td><a href ='ResourceApp.jsp?updateCITIES=<%=dt.getCITIES() %>'> Edit </a></td>
			<td><a href ='ResourcenApp.jsp?deleteCITIES=<%=dt.getCITIES() %>&list=all'> DELETE </a></td>
		</tr>
		<% } %>
		<%
    for( ResourceDto dt : SearchList ){
		%>
	<tr>
		<td><%= dt.getCITIES() %></td>
		<td><%= dt.getMulti_num() %></td>
		<td><%= dt.getMulti_num_mem() %></td>
		<td><%= dt.getMul_indi() %></td>
		<td><%= dt.getMul_emi() %></td>
		<td><%= dt.getMul_married() %></td>
		<td><%= dt.getMul_etc() %></td>
		
	</tr>
	<% } %>
		
		 --%>
	</table>
	</div>
	<a href="index.jsp">[목록 보기]</a>
</body>
</html>


