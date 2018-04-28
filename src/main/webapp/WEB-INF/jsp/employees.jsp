<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工列表</title>
</head>
<body>
<style>
    table {
        border-collapse: collapse;
        font-family: 宋体;
        width: 60%;
        font-size: 16px;
        text-align:center;
    }
    th,td {
        padding: .5em;
    }
    th {
        background-color: black;
        color: #fff;
    }
    td {
        border: 1px solid#777;
    }
    tbody tr:nth-child(odd) {
        background: #eee;
    }
    tbody tr:nth-child(even) {
        background: white;
    }
</style>
<table align="center">
    <thead>
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>性别</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${employees}" var="employee">
            <tr>
                <td align="center">${employee.id }</td>
                <td align="center">${employee.name }</td>
                <td align="center">${employee.age }</td>
                <td align="center">${employee.gender }</td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>
