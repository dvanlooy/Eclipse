<%@page contentType='text/html' pageEncoding='UTF-8' session='false'%>
<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url='/WEB-INF/JSP/head.jsp'>
	<c:param name='title' value='Frituur Frida' />
</c:import>

	<h1>&#9733; zoek sauzen: &#9733;</h1>
	<form>
		<label>Ingredient: <input type="search" name="ingredient1"
			value="${param.ingredient1}" autofocus><span>${fouten.ingredient}</span>
		</label>
	</form>
	<c:if test="${not empty querySauzen}">
		<ul class='zebra'>
			<c:forEach var='saus' items='${querySauzen}'>
				<li><c:out value='${saus.naam}' /></li>
			</c:forEach>
		</ul>
	</c:if>
	<c:if test="${empty fouten and empty querySauzen}">
		<p>Geen Sauzen gevonden</p>
	</c:if>
	<h1>&#9733; Sausjes &#9733;</h1>
	<ul>
		<c:forEach var="saus" items="${sauzen}">
			<li><h2>
					<img alt="<c:out value="${saus.naam}" />"
						src=<c:url value="/images/${saus.naam}.png" /> class="sausjes">
					<c:out value="${saus.naam}" />
					:
				</h2> ingredienten: <c:forEach var="ingredient"
					items="${saus.ingredienten}" varStatus="status">
				${ingredient}<c:if test="${not status.last}">, </c:if>
				</c:forEach></li>
		</c:forEach>
	</ul>

</body>
</html>