<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<style type="text/css">
	<%@include file="/css/purchase_history.css"%>
</style>
<title>Purchase history</title>
</head>
<body>
	 <div class="container-fluid">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <ul class="nav nav-tabs" role="tablist">
              <li class="nav-item">
                <a class="nav-link active" data-bs-toggle="tab" href="#all">All</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#wait">Waiting for shipping</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#complete">Complete</a>
              </li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
              <div id="all" class="container tab-pane active"><br>
                <div class="container-fluid">
                  <div class="row">
                    <c:forEach var="item" items="${list}">
                    	<div class="col-12 box_for_all">
                      <div class="box_shoe">
                        <div class="status d-flex">
                          <a href="#">
                            <div class="status_ship ${item.trangthai == 'Đã nhận hàng' ? '' : 'yet'}">
                              <span><i class="bi bi-truck"></i>${item.trangthai == "Đã nhận hàng" ? "Complete for shipping" : "Waiting for shipping"}</span>
                            </div>
                          </a>
                          <span class="status_complete">${item.trangthai == "Đã nhận hàng" ? "COMPLETE" : "YET"}</span>
                        </div>
                        <div class="box_prod d-flex justify-content-between">
                          <div class="box_in4 d-flex">
                            <div class="img_control">
                              <img src="/xuong/img/${item.sp_hinh}" alt="">
                            </div>
                            <div class="title">
                              <h4>${item.sp_title}</h4>
                              <p>x${item.soluong_mua}</p>
                            </div>
                          </div>
                          <div class="box_price">
                            <span class="old_price">₫${item.gia}</span>
                            <span class="new_price">₫59.000</span>
                          </div>
                        </div>
                      </div>
                      <div class="box_bottom">
                        <div class="box_sum d-flex justify-content-end">
                          <h3>Thành tiền:</h3>
                          <div class="price_sum">
                            ₫59.000
                          </div>
                        </div>
                        <c:if test="${item.trangthai == 'Đã nhận hàng'}">
	                        <div class="box_button d-flex justify-content-end">
	                          <button class="btn_inside">Comment</button>
	                          <button class="btn_inside">Contact</button>
	                          <button class="btn_inside">Buy back</button>
	                        </div>
                        </c:if>
                      </div>
                    </div>
                    </c:forEach>
                  </div>
                </div>
              </div>
              <div id="wait" class="container tab-pane fade"><br>
                <div class="container-fluid">
                  <div class="row">
                                        <c:forEach var="item" items="${list1}">
                    	<div class="col-12 box_for_all">
                      <div class="box_shoe">
                        <div class="status d-flex">
                          <a href="#">
                            <div class="status_ship ${item.trangthai == 'Đã nhận hàng' ? '' : 'yet'}">
                              <span><i class="bi bi-truck"></i>${item.trangthai == "Đã nhận hàng" ? "Complete for shipping" : "Waiting for shipping"}</span>
                            </div>
                          </a>
                          <span class="status_complete">${item.trangthai == "Đã nhận hàng" ? "COMPLETE" : "YET"}</span>
                        </div>
                        <div class="box_prod d-flex justify-content-between">
                          <div class="box_in4 d-flex">
                            <div class="img_control">
                              <img src="/xuong/img/${item.sp_hinh}" alt="">
                            </div>
                            <div class="title">
                              <h4>${item.sp_title}</h4>
                              <p>x${item.soluong_mua}</p>
                            </div>
                          </div>
                          <div class="box_price">
                            <span class="old_price">₫${item.gia}</span>
                            <span class="new_price">₫59.000</span>
                          </div>
                        </div>
                      </div>
                      <div class="box_bottom">
                        <div class="box_sum d-flex justify-content-end">
                          <h3>Thành tiền:</h3>
                          <div class="price_sum">
                            ₫59.000
                          </div>
                        </div>
                        <c:if test="${item.trangthai == 'Đã nhận hàng'}">
	                        <div class="box_button d-flex justify-content-end">
	                          <button class="btn_inside">Comment</button>
	                          <button class="btn_inside">Contact</button>
	                          <button class="btn_inside">Buy back</button>
	                        </div>
                        </c:if>
                      </div>
                    </div>
                    </c:forEach>
                  </div>
                </div>
              </div>
              <div id="complete" class="container tab-pane fade"><br>
                <div class="container-fluid">
                  <div class="row">
                    <c:forEach var="item" items="${list2}">
                    	<div class="col-12 box_for_all">
                      <div class="box_shoe">
                        <div class="status d-flex">
                          <a href="#">
                            <div class="status_ship ${item.trangthai == 'Đã nhận hàng' ? '' : 'yet'}">
                              <span><i class="bi bi-truck"></i>${item.trangthai == "Đã nhận hàng" ? "Complete for shipping" : "Waiting for shipping"}</span>
                            </div>
                          </a>
                          <span class="status_complete">${item.trangthai == "Đã nhận hàng" ? "COMPLETE" : "YET"}</span>
                        </div>
                        <div class="box_prod d-flex justify-content-between">
                          <div class="box_in4 d-flex">
                            <div class="img_control">
                              <img src="/xuong/img/${item.sp_hinh}" alt="">
                            </div>
                            <div class="title">
                              <h4>${item.sp_title}</h4>
                              <p>x${item.soluong_mua}</p>
                            </div>
                          </div>
                          <div class="box_price">
                            <span class="old_price">₫${item.gia}</span>
                            <span class="new_price">₫59.000</span>
                          </div>
                        </div>
                      </div>
                      <div class="box_bottom">
                        <div class="box_sum d-flex justify-content-end">
                          <h3>Thành tiền:</h3>
                          <div class="price_sum">
                            ₫59.000
                          </div>
                        </div>
                        <c:if test="${item.trangthai == 'Đã nhận hàng'}">
	                        <div class="box_button d-flex justify-content-end">
	                          <button class="btn_inside">Comment</button>
	                          <button class="btn_inside">Contact</button>
	                          <button class="btn_inside">Buy back</button>
	                        </div>
                        </c:if>
                      </div>
                    </div>
                    </c:forEach>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</body>
</html>