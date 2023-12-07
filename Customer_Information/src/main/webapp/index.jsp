<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="model.Customer" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.time.LocalDate" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<style>
    table {
        border-collapse: collapse;
        backdrop-filter: blur(10px) ;
        width: 75%;
        margin: 0 auto;
    }
    tr {
        text-align: center;
        border: none;
        border-bottom: 1px solid darkgrey;
    }

</style>
<body>
<%!

%>

<%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("Mai Văn Hoàn", LocalDate.of(1983, 7, 21), "Hà Nội","img/male01.png"));
    customers.add(new Customer("Nguyễn Văn Nam", LocalDate.of(1983, 7, 21), "Bắc Giang","img/male02.png"));
    customers.add(new Customer("Nguyễn Thái Trinh", LocalDate.of(1995, 7, 21), "Nam Định","img/female01.png"));
    customers.add(new Customer("Trần Ngọc Mai", LocalDate.of(1991, 7, 21), "Hà Tây","img/female02.png"));
    customers.add(new Customer("Nguyễn Công Minh", LocalDate.of(2010, 7, 21), "Hải Phòng","img/kid01.png"));

    System.out.println("customer size: " + customers.size());
%>
<h1 style="text-align: center">Danh sách khách hàng
</h1>
<table>
    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>

    </tr>
    <c:forEach items="<%=customers%>" var="customer" ><jsp:useBean id="DateTimeFormatter" scope="request" class="model.Customer"/>

        <tr>
            <td>${customer.name}</td>
<%--            <td><fmt:formatDate value="${customer.dateOfBirth}" pattern="dd-MM-yyyy" /></td>--%>
            <td>${customer.dateOfBirth}</td>
<%--            <td>${DateTimeFormatter.formattedDate}</td>--%>
            <td>${customer.address}</td>
            <td><img src="${customer.imgFilePath}" alt="" width="50" height="50" ></td>
        </tr>
    </c:forEach>

</table>

</body>
</html>