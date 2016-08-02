<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- Op de vorige regel wordt session="false" niet vermeld --%>
<%-- Zo komt session="true" (de default) --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="nl">
<head>
<c:import url="head.jsp">
	<c:param name='title' value='Saus raden' />
</c:import>
</head>
<body>
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
				<label>letter: <input name="letter" size="1" maxlength="1"
					autofocus required>
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