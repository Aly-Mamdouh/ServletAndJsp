<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.Period" %>
<%@ page import="java.time.temporal.ChronoUnit" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.Duration" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculate Age</title>
</head>
<body>
<h1>Calculate Age</h1>
<form method="post">
    <label for="birthdate">Birthdate:</label>
    <input type="date" id="birthdate" name="birthdate"><br><br>
    <label for="currentdate">Current Date:</label>
    <input type="date" id="currentdate" name="currentdate"><br><br>
    <input type="submit" value="Calculate Age"><br><br>
</form>
<% if (request.getMethod().equalsIgnoreCase("post")) {
    String birthDate = request.getParameter("birthdate");
    String currentDate = request.getParameter("currentdate");

    LocalDate birth = LocalDate.parse(birthDate);
    LocalDate current = LocalDate.parse(currentDate);
    Duration duration = Duration.between(birth.atStartOfDay(), current.atStartOfDay());

    Period age = Period.between(birth, current);
    long mon= age.getYears()* 12L + age.getMonths();
%>
<h1 style="color: red"> Age: <%= age.getYears() %> Years, <%= age.getMonths()%> Months, <%=age.getDays()%> Days.</h1>
<h1 style="color: blue"> Age: <%= age.getYears() %> Years, <%= mon%> Months, <%=duration.toDays()%> Days, <%=duration.toHours()%> Hours, <%=duration.toMinutes()%> Minutes, <%=duration.toSeconds()%> Seconds.</h1>
<%}%>

</body>
</html>

