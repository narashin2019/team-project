<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

  <h1>게시판 검색 결과</h1>
  <form action='categorySearch' method='get'>
  <label><input type='checkbox' name='keyword2' value='공지'/>공지</label>
  <label><input type='checkbox' name='keyword2' value='홍보'/>홍보</label>
  <label><input type='checkbox' name='keyword2' value='구인'/>구인</label>
  <label><input type='checkbox' name='keyword2' value='대여'/>대여</label>
  <br>
  <button>전송</button>
<!--   <a href='list'>전체</a>
  <a href='' id='공지' type='text'>공지</a>
  <a href='categorySearch' id='홍보' type='text'>홍보</a>
  <a href='categorySearch' id='구인' type='text'>구인</a>
  <a href='categorySearch' id='대여' type='text'>대여</a><br> -->
  <br>
 </form>
 
  <a href='form'>새 글</a><br>
  <table border='1'>
  <tr>
    <th>번호</th>
    <th>글 분류</th>
    <th>회원번호</th>
    <th>제목</th>
    <th>작성일</th>
    <th>조회수</th>
  </tr>

<c:forEach items="${list}" var="item">
  <tr>
    <td>${item.communicationBoardNo}</td> 
    <td>${item.category}</td> 
    <td>${item.memberNo}</td> 
    <td><a href='detail?communicationBoardNo=${item.communicationBoardNo}'>=> ${item.title}</a></td>
    <td>${item.createDate}</td> 
    <td>${item.viewCount}</td>
  </tr>
</c:forEach>

  </table>
<hr>
<form action='search' method='get'>
검색어: <input name='keyword' type='text'>
<button>검색</button>
</form>
<jsp:include page="../footer.jsp"/>
    