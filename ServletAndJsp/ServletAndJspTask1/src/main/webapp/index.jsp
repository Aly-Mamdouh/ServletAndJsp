<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Calculate Factorial</title>
</head>
<body>
<h1>Factorial Table</h1>
<br/>
<table border="1">
    <tr>
        <th>Number</th>
        <th>Factorial</th>
    </tr>
    <%for (int i = 0; i <= 10; i++) {%>
    <tr>
        <td><%=i%>
        </td>
        <td><%=factorial(i)%>
        </td>
    </tr>
    <%}%>
</table>
</body>
</html>

<%!
    int factorial(int n) {
        if (n == 0) {
            return 1;
        } else {
            return n * factorial(n - 1);
        }
    }
%>
