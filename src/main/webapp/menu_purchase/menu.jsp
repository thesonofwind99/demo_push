<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<style type="text/css">
	<%@include file="/css/menu.css"%>
</style>
<title>Menu</title>
</head>
<body>
<div class="offcanvas offcanvas-start" id="menu">
        <div class="offcanvas-header justify-content-between">
          <div class="d-flex justify-content-between" style="align-items: center;">
            <div class="img_control">
              <img src="/xuong/img/logo.jpg" alt="">
            </div>
              <h3 class="offcanvas-title">Yeser</h3>
          </div>
          <button type="button" class="btn-close m-0" data-bs-dismiss="offcanvas"></button>
        </div>
        <div class="offcanvas-body">
          <nav class="navbar">
            <div class="container-fluid p-0">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link" href="#">HOME</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">BESTSELLER</a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">CATEGORIES</a>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">Athletic shoes</a></li>
                    <li><a class="dropdown-item" href="#">Casual shoes</a></li>
                    <li><a class="dropdown-item" href="#">Dress shoes</a></li>
                    <li><a class="dropdown-item" href="#">Boots</a></li>
                    <li><a class="dropdown-item" href="#">Sandals</a></li>
                  </ul>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">PURCHASE HISTORY</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">FAVORITE</a>
                </li>
              </ul>
            </div>
          </nav>
        </div>
      </div>
      
      <div class="container-fluid mt-3">
        <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#menu">
            Click it
        </button>
      </div>
</body>
</html>