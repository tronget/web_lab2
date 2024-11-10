<%@ page import="java.util.List" %>
<%@ page import="com.tronget.lab2_correct.model.Result" %>
<%@ page import="com.tronget.lab2_correct.model.Dot" %>
<%@ page import="java.time.format.DateTimeFormatter" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Results</title>
    <style>
        .table-container {
            max-height: 200px;
            overflow-y: auto;
            border: 3px solid purple;
        }

        table {
            table-layout: fixed;
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 5px;
            background-color: #f0f0f0;
        }

        thead th:nth-child(1) {
            width: 15%;
        }

        thead th:nth-child(2) {
            width: 15%;
        }

        thead th:nth-child(3) {
            width: 15%;
        }

        thead th:nth-child(4) {
            width: 25%;
        }

        thead th:nth-child(5) {
            width: 30%;
        }
    </style>
</head>
<body>
<div class="table-container">
    <table id="myTable">
        <thead>
        <tr>
            <th>X</th>
            <th>Y</th>
            <th>R</th>
            <th>Is hit</th>
            <th>Time</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Result> results = (List<Result>) request.getServletContext().getAttribute("results");
            if (results != null && !results.isEmpty()) {
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss");
                for (Result result : results) {
                    Dot dot = result.getDot();
                    String time = result.getTime().format(formatter);
                    request.setAttribute("resultBean", result);
                    request.setAttribute("dotBean", dot);
        %>
                    <tr>
                        <jsp:useBean id="dotBean" class="com.tronget.lab2_correct.model.Dot" scope="request" />
                        <jsp:useBean id="resultBean" class="com.tronget.lab2_correct.model.Result" scope="request" />

                        <td><jsp:getProperty name="dotBean" property="x"/></td>
                        <td><jsp:getProperty name="dotBean" property="y"/></td>
                        <td><jsp:getProperty name="dotBean" property="r"/></td>
                        <td><jsp:getProperty name="resultBean" property="hit" /></td>
                        <td><%=time%></td>
                    </tr>
        <%
                }
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>
