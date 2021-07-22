<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<head>
  <title>Student Registration Form</title>
</head>
<body>
<h1 style="color:blue;">Welcome</h1>

<!-- form:form action="processForm" modelAttribute="hero" -->
<form:form action="processForm" modelAttribute="student">

  First name: <form:input path="firstName" />

  <br><br/>

  Last name: <form:input path="lastName" />

  <br><br/>
  <br/>

    Country:
  <br><br/>
 <!-- <form:select path="country">
       <form:option value="Brazil" label="Brazil" />
       <form:option value="France" label="France" />
       <form:option value="Germany" label="Germany" />
       <form:option value="India" label="India" />
  </form:select> -->

  <form:select path="country">
         <form:options items="${student.countryOptions}" />
      <!--   <form:options items="${hero.countryOptions}" />  -->
  </form:select>
  <br><br/>
   <br/>


    <!-- When we hit submit, then this path one will be called like student.setFavoriteLanguage() -->
  Java<form:radiobutton path="favoriteLanguage" value="Java" />
  C#<form:radiobutton path="favoriteLanguage" value="C#" />
  PHP<form:radiobutton path="favoriteLanguage" value="PHP" />
  RUBY<form:radiobutton path="favoriteLanguage" value="RUBY" />

   <br/>
  <br><br/>

    <h6>Operating Systems:</h6>
    Linux <form:checkbox path="operatingSystems" value="Linux" />
    Mac Os <form:checkbox path="operatingSystems" value="Mac Os" />
    Ms Windows <form:checkbox path="operatingSystems" value="Ms Windows" />
  <br><br/>

  <input type="submit" value="submit" />
  <br><br/>

  </form:form>
</body>
</html>