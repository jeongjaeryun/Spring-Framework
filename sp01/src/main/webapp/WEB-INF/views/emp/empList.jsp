<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 사원 조회</title>
<style>
table, th, td {
	border: 1px solid black;
}
</style>
</head>
<body>
	<button type="button" onclick="location.href='empInsert'">등록</button>
	<table>
		<thead>
			<tr>
				<th>NO. </th>
				<th>employee_id</th>
				<th>first_name</th>
				<th>last_name</th>
				<th>email</th>
				<th>hire_date</th>
				<th>job_id</th>
				<th>salary</th>
			</tr>
		</thead>
		<tbody>
	 <%-- ${} EL 태그, 변수값을 불러옴  --%>
		<c:forEach var="info" items="${empList}" varStatus="sts">
			<tr onclick="location.href='empInfo?employeeId=${info.employeeId}'">
				<td>${sts.count}</td>
				<td>${info.employeeId}</td>
				<td>${info.firstName}</td>
				<td>${info.lastName}</td>
				<td>${info.email}</td>
				<td>
				 	<fmt:formatDate value="${info.hireDate}" pattern="yyyy년 MM월 dd일"/>
				</td>
				<td>${info.jobId}</td>
				<td>${empList[sts.index].salary}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<script>
	  // JSP -> Servelt -> java => html -> css -> javascript 순으로 컴파일이 일어남
	  let result = `${result }`;
	  if(result != ''){
	  	alert(result); 
	  }
	</script>
</body>
</html>