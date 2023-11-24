<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../../tags/tags.jsp"/>
<html>
    <body>
        <div class="flex-column h-full center-items">
            <h3 class="title">Здравствуйте, ${currentUser.name}!</h3>
            <p class="subtitle">Вы успешно авторизованы! А теперь досвидания!</p>
            <form action="<c:url value='/logout'/>" method="post">
                <button type="submit" class="button button__submit">Выйти</button>
            </form>
        </div>
    </body>
</html>