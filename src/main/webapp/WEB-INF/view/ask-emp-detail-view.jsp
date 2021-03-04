<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>


<h2> Hello Employee</h2>

<br>
<br>
<br>

    <from:form action = "showDetails" modelAttribute="employee">
    Name <form:input path="name"/>
        <br><br>
        Surname <form:input path="surname"/>
        <br><br>
        Salary <form:input path="salary"/>
        <br><br>
       Department <form:select path="department">
            <form:options items="${employee.departments}"/>
            </form:select>
        <br><br>
        Which car do you want?
        <br>
        BMW<form:radiobutton path="carBrand" value="BMW"/>
        Audi<form:radiobutton path="carBrand" value="Audi"/>
        Volvo<form:radiobutton path="carBrand" value="Volvo"/>
        <br><br>

        <input type="submit" value="OK">

    </from:form>


</body>
</html>