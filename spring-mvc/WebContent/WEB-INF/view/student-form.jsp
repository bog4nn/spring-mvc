<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE hmtl>
<html>
<head>
<title>Student Registration Form</title>
</head>

<body>
	<form:form action="processForm" modelAttribute="student">
	First name:<form:input path="firstName"/>
	<br><br>
	Last name:<form:input path="lastName"/>
	<br><br>
	<form:select path="country">
		
		<form:options items="${student.countryOption}"/>
			
	</form:select>
	<br><br>
	Favorite Language:
	<!-- On submit Spring will call student.setFavoriteLangue() --> 
	Java<form:radiobutton path="favoriteLanguage" value="Java"/>
	C#<form:radiobutton path="favoriteLanguage" value="C#"/>
	PHP<form:radiobutton path="favoriteLanguage" value="PHP"/>
	Ruby<form:radiobutton path="favoriteLanguage" value="Ruby"/>
	<br><br>
	Operation System:
	Linux<form:checkbox path="operationSystems" value="Linux"/>
	Mac OS<form:checkbox path="operationSystems" value="Mac OS"/>
	MS Window<form:checkbox path="operationSystems" value="MS Window"/>
	<input type="submit" value="Submit"/>
	</form:form>
	
	
</body>
</html>