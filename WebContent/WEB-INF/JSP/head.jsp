<%@page contentType='text/html' pageEncoding='UTF-8' session='false' trimDirectiveWhitespaces ='true'%>
<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<link rel='shortcut icon' href=<c:url value='/images/favicon.ico'/> type='image/x-icon' />
<meta name='viewport' content='width=device-width,initial-scale=1'>
<link rel='stylesheet' href=<c:url value='/styles/default.css'/>>
<title>Frituur Frida</title>
</head>
<body class="${cookie.meisjesjongens.value}">
<h1>&#9733; FRITUUR FRIDA &#9733;</h1>
<nav><ul>
<li><a href="<c:url value='/'/>">Welkom</a></li>
<li><a href="<c:url value='/sauzen.htm'/>">Sausjes</a></li>
<li><a href="<c:url value='/meisjesjongens.htm'/>">Meisje/Jongen</a></li>
<li><a href="<c:url value='/zoekdefriet.htm'/>">Zoek de friet</a></li>
<li><a href="<c:url value='/sausraden.htm'/>">Raad de saus</a></li>
</ul></nav>