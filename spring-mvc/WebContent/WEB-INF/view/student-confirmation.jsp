<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE hmtl>
<html>
<head>
<title>Student Confirmation</title>
</head>

<body>
The student is comfirm :${student.firstName} ${student.lastName}

<br><br>

Country: ${student.country}
<br><br>
<!-- Spring will call student.getFavoriteLanguage -->
Favorite Language : ${student.favoriteLanguage }
<br><br>

Operating System:
<ul>
	<c:forEach var="temp" items="${student.operationSystems}">
		<li>${temp}</li>
	</c:forEach>
</ul>
</body>
</html>