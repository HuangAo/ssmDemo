<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>allBooks</title>

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
 <div class="container">
     <div class="row clearfix">
         <div class="col-md-12 column">
             <h1>
                 <small>book list -- all books</small>
             </h1>
         </div>
     </div>
     <div class="row clearfix">
         <div class="col-md-12 column">
             <table class="table table-hover table-striped">
               <thead>
                 <tr>
                     <th>书籍编号</th>
                     <th>书籍名称</th>
                     <th>书籍数量</th>
                     <th>书籍详情</th>
                 </tr>
               </thead>

                 <tbody>
                    <c:forEach var="book" items="${list}">
                        <tr>
                            <td>${book.bookID}</td>
                            <td>${book.bookName}</td>
                            <td>${book.bookCount}</td>
                            <td>${book.detail}</td>
                        </tr>
                    </c:forEach>
                 </tbody>
             </table>
         </div>
     </div>
 </div>

</body>
</html>
