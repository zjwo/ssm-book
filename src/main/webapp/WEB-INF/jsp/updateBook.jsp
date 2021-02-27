<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
    <%--引入BootStrap--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header text-center">
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/updateBook" method="post" class="form-inline text-center">
        <%--隐藏域--%>
        <input type="hidden" name="bookId" value="${toBook.bookId}">

        <div class="form-group">
            <label>书籍名称:</label>
            <input type="text" name="bookName" class="form-control" value="${toBook.bookName}" required>
        </div>

        <div class="form-group">
            <label>书籍数量:</label>
            <input type="text" name="bookCounts" class="form-control" value="${toBook.bookCounts}"
                   onkeyup="this.value=this.value.replace(/\D/g,'')"
                   onafterpaste="this.value=this.value.replace(/\D/g,'')" required>
        </div>

        <div class="form-group">
            <label>书籍描述:</label>
            <input type="text" name="detail" class="form-control" value="${toBook.detail}" required>
        </div>

        <button type="submit" class="btn btn-default">点击修改</button>
    </form>
</div>
</body>
</html>