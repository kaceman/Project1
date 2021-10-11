<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE HTML>
<html>
   <head>
      <meta charset="UTF-8" />
      <title>Welcome</title>
      <link rel="stylesheet" href="//cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
   </head>
   <body>
      <h1>Consumers List</h1>
      <sec:authorize access="isAuthenticated()">
         <a style="margin-bottom: 20px; float: left;" href="/consumer/add">Create new one</a>
         <a style="margin-bottom: 20px; float: right;" href="/logout">Logout</a>
      </sec:authorize>
      <sec:authorize access="!isAuthenticated()">
         <a style="margin-bottom: 20px; float: right" href="/login">Login</a>
      </sec:authorize>
      <hr style="margin-bottom: 20px; clear: both">
      <table id="consumers" border="1">
         <thead>
            <tr>
               <th>Name</th>
               <th>Address</th>
               <th>Phone</th>
               <th>Birth date</th>
            </tr>
         </thead>
         <tbody>
            <c:forEach items="${consumers}" var="consumer">
               <tr>
                  <td><c:out value="${consumer.name}"/></td>
                  <td><c:out value="${consumer.address}"/></td>
                  <td><c:out value="${consumer.phone}"/></td>
                  <td><c:out value="${consumer.birth_date}"/></td>
               </tr>
            </c:forEach>
         </tbody>
      </table>
      <script
              src="https://code.jquery.com/jquery-3.6.0.min.js"
              integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
              crossorigin="anonymous"></script>
      <script src="//cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
      <script>
         $('#consumers').DataTable();
      </script>
   </body>
</html>