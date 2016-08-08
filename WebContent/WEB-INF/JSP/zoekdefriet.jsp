<%@page contentType='text/html' pageEncoding='UTF-8'%>
<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url='/WEB-INF/JSP/head.jsp'>
	<c:param name='title' value='Frituur Frida: Zoek de Friet' />
</c:import>
</head>
<body class="${cookie.meisjesjongens.value}">
<h1>&#9733; FRITUUR FRIDA &#9733;</h1>
<c:import url='/WEB-INF/JSP/menu.jsp'/>
	<h1>Zoek de friet</h1>
	<form method='post'>
		<c:forEach items='${spel.deurIsOpen}' var='deurIsOpen'
			varStatus="status">
			<button type='submit' name='volgnummer' value='${status.index}'>
				<c:choose>
					<c:when test='${deurIsOpen}'>
						<c:choose>
							<c:when test='${status.index == spel.deurMetFriet}'>
								<img src='<c:url value="/images/gevonden.png"/>' alt='gevonden' />
							</c:when>
							<c:otherwise>
								<img src='<c:url value="/images/deuropen.png"/>' alt='deur open' />
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:otherwise>
						<img src='<c:url value="/images/deurtoe.png"/>' alt='deur toe' />
					</c:otherwise>
				</c:choose>
			</button>
		</c:forEach>
	</form>
	<c:url value="" var="nieuwSpelURL">
		<c:param name="nieuwSpel" value="true" />
	</c:url>
	<form method="post" action="${nieuwSpelURL}">
		<input type="submit" value="Nieuw spel">
	</form>
</body>
</html>