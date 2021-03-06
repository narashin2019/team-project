<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<% String str = request.getParameter("groupNo"); %>

   
  <nav class="navbar navbar-default navbar-fixed">
       <div class="container-fluid">
           <div class="navbar-header">
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                   <span class="sr-only">Toggle navigation</span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
               </button>
               <a class="navbar-brand" href="../moim/home?groupNo=<%=str%>">홈</a>
               <a class="navbar-brand" href="../notice/list?groupNo=<%=str%>">공지</a>
               <a class="navbar-brand" href="../plan/list?groupNo=<%=str%>">일정</a>
               <a class="navbar-brand" href="../account/list?groupNo=<%=str%>">회계</a>
               <a class="navbar-brand" href="../feed/list?groupNo=<%=str%>">피드</a>
               <a class="navbar-brand" href="../member/list?groupNo=<%=str%>">회원</a>
               <a class="navbar-brand" href="../admin/manual?groupNo=<%=str%>">관리</a> 
           </div>
           <div class="collapse navbar-collapse">


               <ul class="nav navbar-nav navbar-right">

                    <li class="dropdown">
                       <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                           <i class="fa fa-bell"></i>
                           <b class="caret hidden-sm hidden-xs"></b>
                           <span class="notification hidden-sm hidden-xs">4</span>
                           <p class="hidden-lg hidden-md">
                               5 알림
                               <b class="caret"></b>
                           </p>
                       </a>
                       <ul class="dropdown-menu">
                       <li><a href="#">알림 1</a> </li>
                       <li><a href="#">알림 2</a></li>
                       <li><a href="#">알림 3</a></li>
                       <li><a href="#">알림 4</a></li>
                       <li><a href="#">전체알림보기</a></li>
                       </ul>
                    </li>
                    <li class="message">
                      <a href="#">
                       <i class="fa fa-envelope"></i>
                      </a>
                   </li>
                   <li class="dropdown">
                         <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                           <i class="fa fa-user"></i>
                         </a>
                         <ul class="dropdown-menu">
                           <li><a href="../member/mypage">마이페이지</a></li>
                           <li><a href="#">로그아웃</a></li>
                         </ul>
                   </li>
                   <li class="separator hidden-lg hidden-md">
                   </li>
               </ul>
           </div>
        </div>
    </nav>
 