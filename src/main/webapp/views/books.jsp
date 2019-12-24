<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lin99
  Date: 23.12.2019
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Library</title>
</head>
<body>
<h2 align="center">Mysterious Books List</h2>
<br>
<a href="index">Go to main page</a>


<table align="center" title="Create new Mysterious Book here">
    <tbody>

    <form action="createBook" method="POST">
        <br>
        <tr>
            <td>
                <label>Name</label>
            </td>
            <td>
                <dif>
                    <input type="text" id="name" name="name" value="book"/>
                </dif>
            </td>
        </tr>
        <tr>
            <td>
                <label>Year of birth</label>
            </td>
            <td>
                <dif>
                    <input type="text" id="year" name="year" value="1950"/>
                </dif>
            </td>
        </tr>

        <tr>
            <td>
                <label>Author id</label>
            </td>
            <td>
                <dif>
                    <input type="text" id="authorId" name="authorId" value="1"/>
                </dif>
            </td>
        </tr>
        <tr>
            <td>
                <label>Summery</label>
            </td>
            <td>
                <dif>
                    <input type="text" id="summery" name="summery" value="summery" size="20"/>
                </dif>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" value="Create"/>
            </td>
        </tr>
    </form>
    </tbody>
</table>


<table align="center">
    <thead>
    <th>Book Name</th>
    <th>Year</th>
    <th>Author Name</th>
    <th>Link</th>
    <th>Delete</th>
    <th>Update</th>
    </thead>
    <tbody>
    <c:forEach items="${bookslist}" var="book">
        <jsp:useBean id="book" scope="session" class="example.entities.Book"/>
        <jsp:useBean id="Author" scope="session" class="example.entities.Author"/>
        <tr>
            <td>${book.name}</td>
            <td>${book.year}</td>
            <td>${book.author.firstName} ${book.author.lastName}</td>
            <td><a href="moreinfo?id=${book.bookId}">More Info</a></td>
            <td align="center">
                <form action="deleteBook" method="POST">
                    <input type="text" id="id" name="id" value="${book.bookId}" hidden="true"/>
                    <input type="submit" value="Delete"/>
                </form>
            </td>
            <td><a href="bookUpdate?id=${book.bookId}">Update</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
