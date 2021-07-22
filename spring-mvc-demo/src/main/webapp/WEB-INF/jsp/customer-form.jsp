<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
  <title>Customer Form</title>

  <style>
        .error {color:red;}

        .greenError{ color : green; }
  </style>

</head>
<body>
<!-- Display error msg if error msg is set (cssClass) -->
<em> Fill out the form. Asterisk (*) means required. </em>
    <form:form action="processForm" modelAttribute="customer">

        First Name: <form:input path="firstName" />

        <br><br/>

        Last Name (*): <form:input path="lastName" />
        <form:errors path="lastName" cssClass="error" />

        <br><br/>

        Free passes: <form:input path="freePasses" />
        <form:errors path="freePasses" cssClass="greenError" />

        <br><br/>

        Postal Code: <form:input path="postalCode" />
        <form:errors path="postalCode" cssClass="error" />

        <br><br/>


        Course Code: <form:input path="courseCode" />
        <form:errors path="courseCode" cssClass="error" />

        <br><br/>

        <input type="submit" value="Submit" />
    </form:form>


</body>
</html>