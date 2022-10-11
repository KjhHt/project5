<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
   td{text-align:center;}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>

<c:choose>
    <c:when test='${msg=="addMember" }'>
        <script>
            window.onload = function(){
                alert("회원을 등록했습니다.");
            }
        </script>
    </c:when>
    <c:when test='${msg=="modified" }'>
        <script>
            window.onload = function(){
                alert("회원 정보를 수정했습니다.");
            }
        </script>
    </c:when>    
    <c:when test='${msg=="deleted"}'>
        <script>
            window.onload = function(){
                alert("회원 정보를 삭제했습니다.");
            }
        </script>
    </c:when>
    
</c:choose>
</head>

<body>
<div class="jumbotron text-center">
  <h2 data-toggle="modal" data-target="#exampleModalCenter">타이틀</h2>

</div>
<div class="container">
   <form id="frm01" class="form-inline"  method="post">
     <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
       <input class="form-control mr-sm-2" placeholder="제목" />
       <input class="form-control mr-sm-2" placeholder="내용" />
       <button class="btn btn-info" type="submit">Search</button>
    </nav>
   </form>
   <table class="table table-hover table-striped">
      <col width="20%">
      <col width="20%">
      <col width="20%">
      <col width="20%">
      <col width="20%">
    <thead>
    <!-- 
    int idno, String id, String pw, int point, Date birthdate
     -->
      <tr class="table-success text-center">
        <th>아이디번호</th>
        <th>아이디</th>
        <th>비밀번호</th>
        <th>포인트</th>
        <th>생년월일</th>
      </tr>
       <c:choose>
            <c:when test="${empty accountList}">
                <tr>
                    <td colspan="5">
                        <b>등록된 회원이 없습니다.</b>
                    </td>
                </tr>
            </c:when>
            
            <c:when test="${!empty accountList}">
                <c:forEach var="mem" items="${accountList}">
                    <tr>
                        <td>${mem.idno}</td>
                        <td>${mem.id}</td>
                        <td>${mem.pw}</td>
                        <td>${mem.point}</td>
                        <td>${mem.birthdate}</td>
                         <td><a href="${contextPath}/member/modMemberForm.do?id=${mem.id}">수정</a></td>
                        <td><a href="${contextPath}/member/delMember.do?id=${mem.id}">삭제</a></td>
                   
                    </tr>
                </c:forEach>
            </c:when>
        </c:choose>
    </thead>   
   </table>    
    <br>
    <a href="${contextPath}/member/memberForm.do"> 회원 가입 하기</a>
</div>
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">타이틀</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form id="frm02" class="form"  method="post">
        <div class="row">
         <div class="col">
           <input type="text" class="form-control" placeholder="사원명 입력" name="ename">
         </div>
         <div class="col">
           <input type="text" class="form-control" placeholder="직책명 입력" name="job">
         </div>
        </div>
       </form> 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>