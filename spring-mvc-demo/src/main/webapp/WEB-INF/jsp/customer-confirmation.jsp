<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- JSTL tag give forEach looping reference -->
<!DOCTYPE html>
<head>
  <title>Customer Confirmation</title>
</head>
<body>

<h1 style="color:blue;">Congratulations</h1>
<h1> The customer is confirmed: ${customer.firstName} ${customer.lastName} </h1>
<h2 style = " color: green;"> You have ${customer.freePasses} free passes. </h2>
<h2 style = " color: green;"> Postal code: ${customer.postalCode}. </h2>
<h2 style = " color: pink;"> Course code: ${customer.courseCode}. </h2>

</body>
</html>