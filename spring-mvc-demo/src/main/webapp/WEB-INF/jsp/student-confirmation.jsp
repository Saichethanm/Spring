<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- JSTL tag give forEach looping reference -->
<!DOCTYPE html>
<head>
  <title>Student Confirmation</title>
</head>
<body>

<h1 style="color:blue;">Congratulations</h1>
<h1> The student is confirmed: ${student.firstName} ${student.lastName} </h1>

<br><br/>

Country: ${student.country}

<br><br/>

Favorite Language: ${student.favoriteLanguage}

<br><br/>

Operating Systems:

    <!-- calls student.getOperatingSystems()  -->
<ul>
    <c:forEach var="temp" items="${student.operatingSystems}">
    <li> ${temp} </li>
    </c:forEach>
</ul>

<br><br/>
</body>
</html>