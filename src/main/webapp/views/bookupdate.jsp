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
<form action="bookUpdate" method="POST">
    Create a teacher <br>
    <div>
        <label>Name</label>
        <input type="text" id="name" name="name" value="${book.name}"/>
    </div>
    <div>
        <label>Year</label>
        <input type="text" id="year" name="year" value="${book.year}"/>
    </div>
    <div>
        <label>Author</label>
        <input type="text" id="author" name="author" value="${book.author.authorId}"/>
    </div>
    <div>
        <label>Summary</label>
        <input type="text" id="summary" name="summary" value="${book.summary}"/>
    </div>
    <input id="id" name="id" value="${book.bookId}" hidden="true"/>
    <input type="submit" value="Update"/>
</form>
</body>
</html>
