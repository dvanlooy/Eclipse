<%@page contentType='text/html' pageEncoding='UTF-8' session='false'%>
<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url='/WEB-INF/JSP/head.jsp'>
	<c:param name='title' value='Frituur Frida' />
</c:import>
</head>
<body class="${cookie.meisjesjongens.value}">
<h1>&#9733; FRITUUR FRIDA &#9733;</h1>
<c:import url='/WEB-INF/JSP/menu.jsp'/>
	<h1>Statistiek</h1>
	<c:if test="${not empty statistiek}">
		<table>
			<thead>
				<tr>
					<th>URL</th>
					<th>aantal requests</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="entry" items="${statistiek}">
					<tr>
						<td>${entry.key}</td>
						<td style="text-align: right;">${entry.value}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
</body>
</html>