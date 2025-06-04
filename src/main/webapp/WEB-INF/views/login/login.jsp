<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: macbookpro
  Date: 2025. 6. 2.
  Time: 오후 3:26
  To change this template use File | Settings | File Templates.
--%>
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
    <title>로그인</title>
  </head>
<body>
  <div class="form_area">
    <form action="">
      <h1 class="form_title">LOGIN</h1>

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
        <div class="form_check">
          <div class="chkeck_box_wrap">
            <label class="checkbox_label">
              <input type="checkbox"  name="remember" checked>
              <span class="checkbox_icon"></span>
              <span class="checkbox_text">로그인 상태 유지</span>
            </label>
          </div>
        </div>
      </div>

      <ul class="form_group link_list">
        <li><a href="">비밀번호찾기</a></li>
        <li><a href="">아이디찾기</a></li>
        <li><a href="/membership">회원가입</a></li>
      </ul>
      <button type="submit" class="btn">Submit</button>
    </form>
  </div>
</body>
</html>
