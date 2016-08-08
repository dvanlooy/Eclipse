<%@page contentType='text/html' pageEncoding='UTF-8'%>
<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url='/WEB-INF/JSP/head.jsp'>
	<c:param name='title' value='Frituur Frida: raad de saus' />
</c:import>
</head>
<body class="${cookie.meisjesjongens.value}">
<h1>&#9733; FRITUUR FRIDA &#9733;</h1>
<c:import url='/WEB-INF/JSP/menu.jsp'/>
	<h1>Saus raden</h1>
	<c:choose>
		<c:when test="${sausRaden.verloren}">
U bent verloren, de saus was ${sausRaden.saus}.
</c:when>
		<c:when test="${sausRaden.gewonnen}">
U bent gewonnen, de saus was ${sausRaden.saus}.
</c:when>
		<c:otherwise>
Te raden saus: ${sausRaden.sausMetPuntjes}
<form method="post" id="radenform">
				<label>letter: <input name="letter" size="1" maxlength="1" autofocus required>
				</label> <input type="submit" value="Raden" id="radenknop">
			</form>
			<script>
				document.getElementById('radenform').onsubmit = function() {
					document.getElementById('radenknop').disabled = true;
				};
			</script>
		</c:otherwise>
	</c:choose>
	<c:url value="" var="nieuwSpelURL">
		<c:param name="nieuwSpel" value="true" />
	</c:url>
	<form method="post" action="${nieuwSpelURL}">
		<input type="submit" value="Nieuw spel">
	</form>
	<img
		src="<c:url value='/images/${sausRaden.verkeerdeBeurten}.png'/>"
		alt="${sausRaden.verkeerdeBeurten} verkeerde beurten">
</body>
</html>