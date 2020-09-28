<%-- 
    Document   : contacts
    Created on : Sep 24, 2020, 7:48:15 PM
    Author     : ss121
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">    
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Company Contacts</title>
    </head>
     <body>
        <div class="container">
            <h1>Company Contacts</h1>
            <hr/>
            <div class="navbar">
                <ul class="nav nav-tabs">
                    <li role="presentation"> 
                        <a href="${pageContext.request.contextPath}/index.jsp">
                            Home
                        </a>
                  </li>
                  <li role="presentation"
                      class="active">
                      <a href="${pageContext.request.contextPath}/displayContactsPage">
                          Contacts
                      </a>
                  </li>
                  <li role="presentation">
                      <a href="${pageContext.request.contextPath}/displaySearchPage">
                          Search
                      </a>
                  </li>
                </ul>    
            </div>
            <!-- Main Page Content Start -->
            
            <!-- Main Page Content Stop -->    
        </div>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

    </body>
</html>
