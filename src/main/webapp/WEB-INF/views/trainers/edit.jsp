<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/WEB-INF/views/fragments/bootstrap.jspf" %>
</head>
<body>
    <%@include file="/WEB-INF/views/fragments/navbar.jspf" %>

    <div class="container">

        <form:form method="POST" role="form" modelAttribute="trainer" class="form-signin">

            <div class="row">

                <div class="col-md-4">

                    <h3> </h3>
                    <h3>Trainer</h3>
                    <input type="hidden" name="id" value="${trainer.id}"/>

                    <div class="form-group">
                        <label for="name">Trainer name</label>
                        <form:input type="text" class="form-control" path="name" id="name"/>
                    </div>

                    <div class="form-group">
                        <label for="surname">Trainer surname</label>
                        <input type="text" class="form-control" id="surname" name="surname" placeholder="Second name"
                               value="${trainer.surname}"/>
                    </div>

                    <div class="form-group">
                        <label for="birthday">Trainer birthday</label>
                        <input type="datetime" class="form-control" id="birthday" name="birthday" placeholder="Birthday"
                               value="${trainer.birthday}"/>
                    </div>

                    <a href="/trainer/" class="btn btn-default">Cancel</a>

                    <button type="submit" class="btn btn-primary">Save</button>
                </div>

                <div class="col-md-8">
                    <h3>Themes</h3>
                    <div class="row">
                        <%--<form:checkboxes path="themeList" items="${themesAll}" itemLabel="name" itemValue="id"--%>
                                         <%--id="themesList" element="span class='col-md-6'"/>--%>
                    </div>
                </div>
            </div>

        </form:form>

    </div>

</body>

</html>
