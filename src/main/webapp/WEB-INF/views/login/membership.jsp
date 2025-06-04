<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width-device-width, initial-scale=1">
    <%@ include file="/WEB-INF/views/include/global.jsp" %>
    <script type="text/script" src="<c:url value='/js/login/script.js'/>"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>회원가입</title>
</head>
<body>
    <div class="form_area">
        <form action="">
            <h1 class="form_title">MEMBERSHIP</h1>

            <div class="form_group">
                <div>
                    <i class="fa fa-user" aria-hidden="true"></i>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="아이디를 입력해주세요.">
                </div>
            </div>

            <div class="form_group">
                <div>
                    <i class="fa fa-lock" aria-hidden="true"></i>
                    <input type="password" class="form-control" id="exampleInputPassword" placeholder="비밀번호를 입력해주세요.">
                </div>
            </div>

            <div class="form_group">
                <div>
                    <i class="fa fa-lock" aria-hidden="true"></i>
                    <input type="password" class="form-control" id="exampleInputPassword" placeholder="비밀번호를 다시 입력해주세요.">
                </div>
            </div>

            <div class="form_group">
                <div>
                    <i class="fa fa-envelope" aria-hidden="true"></i>
                    <input type="text" class="form-control" id="exampleInputEmail" placeholder="이메일을 입력해주세요.">
                </div>
            </div>

            <div class="form_group">
                <div>
                    <i class="fa fa-user" aria-hidden="true"></i>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="이름을 입력해주세요.">
                </div>
            </div>

            <div class="form_group">
                <div>
                    <i class="fa fa-calendar" aria-hidden="true"></i>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="">
                </div>
            </div>

            <button type="submit" class="btn">가입하기</button>
        </form>
    </div>
</body>
</html>
