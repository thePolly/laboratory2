<%--
  Created by IntelliJ IDEA.
  User: qwerty
  Date: 10.12.2019
  Time: 12:54
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>

</head>
<body>
<form action="authorUpdate" method="POST">
    Create a teacher <br>
    <div>
        <label>First Name</label>
        <input type="text" id="name" name="name" value="${author.firstName}"/>
    </div>
    <div>
        <label>Last Name</label>
        <input type="text" id="lastname" name="lastname" value="${author.lastName}"/>
    </div>
    <div>
        <label>Year of Birth</label>
        <input type="text" id="yearOfBirth" name="yearOfBirth" value="${author.yearOfBirth}"/>
    </div>
    <input id="id" name="id" value="${author.authorId}" hidden="true"/>
    <input type="submit" value="Update"/>
</form>
</body>
</html>
