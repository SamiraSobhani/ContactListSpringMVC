<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="windows-1252" %>
<!DOCTYPE html>
<html>

<head>
    <title>Vending Machine</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
    <title>Vending Machine</title>
</head>

<body>
<br/>
<h1 style="text-align: center">Vending Machine</h1>
<br/>
<hr/>
<br/>
<div class="container">
    <div class="row">
        <div class="col-sm-8" id="items">
            <div class='row'>
                <div class='col-sm-2'>
                    <div class="navbar">
                        <ul class="nav nav-tabs">
                            <li role="presentation" class="active">
                                <a href="${pageContext.request.contextPath}/">
                                    <c:forEach items="${itemList}" var="currentItem">
                                        <p><c:out value="${currentItem.name}"/></p>
                                        <p><c:out value="${currentItem.price}"/></p>
                                        <p>Quantity Left : <c:out value="${currentItem.quantity}"/></p>
                                    </c:forEach>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

</body>

</html>

