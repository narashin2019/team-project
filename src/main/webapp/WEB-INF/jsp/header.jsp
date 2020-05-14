<%@page import="com.nmnm.gms.domain.Member"%>
<%@page import="com.nmnm.gms.domain.Plan"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head>
<meta charset='UTF-8'>
<c:if test="${not empty refreshUrl}">
<meta http-equiv="Refresh" content="${refreshUrl}">
</c:if>
<title>네모내모</title>
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css' integrity='sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh' crossorigin='anonymous'>
<style>
body {
   background-color: LightGray;
}
div.container {
   background: white;
   border: 1px solid gray;
   width: 1000px;
   
}
</style>
</head>
<body>
<nav class='navbar navbar-expand-lg navbar-dark bg-dark'>
<a class='navbar-brand' href='../../index.html'>네모내모</a>
<button class='navbar-toggler' type='button' data-toggle='collapse' data-target='#navbarNav' aria-controls='navbarNav' aria-expanded='false' aria-label='Toggle navigation'>
  <span class='navbar-toggler-icon'></span>
</button>
<div class='collapse navbar-collapse' id='navbarNav'>
  <ul class='navbar-nav mr-auto'>
    <li class='nav-item'>
      <a class='nav-link' href='../notice/list'>공지사항</span></a>
    </li>
    <li class='nav-item'>
      <a class='nav-link' href='../plan/list'>일정</a>
    </li>
    <li class='nav-item'>
      <a class='nav-link' href='../feed/list'>피드</a>
    </li>
    <li class='nav-item'>
      <a class='nav-link' href='../co/list'>소통게시판</a>
    </li>
    <li class='nav-item'>
      <a class='nav-link' href='../member/list'>회원</a>
    </li>
        <li class='nav-item'>
      <a class='nav-link' href='../group/list'>모임</a>
    </li>
        <li class='nav-item'>
      <a class='nav-link' href='../account/list'>회계</a>
    </li>
  </ul>
<c:if test="${not empty loginUser}">
  <span class='navbar-text'>${loginUser.name}</span>
  <a href='../auth/logout' class='btn btn-success btn-sm'>로그아웃</a>
</c:if>
<c:if test="${empty loginUser}">
  <a href='../auth/form' class='btn btn-success btn-sm'>로그인</a>
</c:if> 
</div>
</nav>
<div class='container'>