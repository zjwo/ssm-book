<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示</title>
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
                    <small>书籍管理系统</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-default" href="${pageContext.request.contextPath}/listBook">显示全部</a>
            <a class="btn btn-default" href="${pageContext.request.contextPath}/toAddBook">新增书籍</a>
        </div>

        <form action="${pageContext.request.contextPath}/selectBook" method="post">
            <div class="input-group col-md-3" style="float: right">
                <input type="text" class="form-control" name="bookName" required placeholder="请输入要查询的书籍名称">
                <span class="input-group-btn">
                        <button class="btn btn-success btn-search">搜索</button>
                    </span>
            </div>
        </form>
    </div>
    <br>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <th>书籍编号</th>
                <th>书籍名称</th>
                <th>书籍数量</th>
                <th>书籍描述</th>
                <th>操作</th>
                </thead>
                <tbody>
                <c:forEach var="book" items="${list}">
                    <tr>
                        <td>${book.bookId}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.detail}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/toUpdate?id=${book.bookId}">修改</a>
                            &nbsp; | &nbsp;
                            <a href="${pageContext.request.contextPath}/delBook?id=${book.bookId}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class=" text-right">
                <h3>
                    <small style="color: red">${error}</small>
                </h3>
            </div>
        </div>
    </div>
</div>
</body>
</html>
