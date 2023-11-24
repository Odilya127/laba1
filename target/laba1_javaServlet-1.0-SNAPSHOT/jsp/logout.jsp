<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../tags/tags.jsp"/>
<html>
    <body>
        <div class="flex-column h-full center-items">
            <h3 class="title">Здравствуйте!</h3>
            <p class="subtitle">Вы успешно авторизованы! А теперь до свидания!</p>
            <a href="<c:url value='/logout'/>" class="button button__submit">Выйти</a>
        </div>
    </body>
</html>