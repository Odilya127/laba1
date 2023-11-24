<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../tags/tags.jsp"/>
<html>
<body>
    <div class = "flex-column center-items h-full">
        <form class = "flex-column center-item gap-md" action="<c:url value="/auth"/>" method="post">
            <div>
                <p class="input__label">Логин</p>
                <input class="input_field" name="login" type="text" autocomplete="off">

            </div>
            <div>
                <p class="input__label">Пароль</p>
                <input class="input_field" name="password" type="password" autocomplete="off">
            </div>
            <button type="submit" class="button button__submit">Войти</button>
        </form>
        <c:if test="${notRegistered}">
            <div class="flex-column center-items">
                <p class="text-danger">Неправильный логин или пароль.</p>
            </div>
        </c:if>
    </div>
</body>
</html>
