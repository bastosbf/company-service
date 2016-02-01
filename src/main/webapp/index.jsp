<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/angular.min.js"></script>
<script type="text/javascript" src="js/app.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Company REST</title>
</head>
<body ng-app="">
  <div class="container" ng-init="tabActive=1">
    <ul class="nav nav-pills nav-justified">
      <li ng-class="{active: tabActive==1}">
        <a href="#add" ng-click="tabActive=1">Add company</a>
      </li>
      <li ng-class="{active: tabActive==2}">
        <a href="#list" ng-click="tabActive=2">List companies</a>
      </li>
      <li ng-class="{active: tabActive==3}">
        <a href="#get" ng-click="tabActive=3">Get company detail</a>
      </li>
      <li ng-class="{active: tabActive==4}">
        <a href="#update" ng-click="tabActive=4">Update company</a>
      </li>
      <li ng-class="{active: tabActive==5}">
        <a href="#add-employee" ng-click="tabActive=5">Add employee</a>
      </li>
      <li ng-class="{active: tabActive==6}">
        <a href="#add-owner" ng-click="tabActive=6">Add owner</a>
      </li>
    </ul>
    <div class="list-group-item">
      <div ng-show="tabActive==1">
        <h4 class="list-group-item-heading">
          <a href="#">rest/company/add</a>
        </h4>
        </br>
        <%@ include file="add-company.jsp"%>
      </div>
      <div ng-show="tabActive==2">
        <h4 class="list-group-item-heading">
          <a href="#">rest/company/list</a>
        </h4>
        </br>
        <%@ include file="list-companies.jsp"%>
      </div>
      <div ng-show="tabActive==3">
        <h4 class="list-group-item-heading">
          <a href="#">rest/company/get</a>
        </h4>
        </br>
        <%@ include file="get-company.jsp"%>
      </div>
      <div ng-show="tabActive==4">
        <h4 class="list-group-item-heading">
          <a href="#">rest/company/update</a>
        </h4>
        </br>
        <%@ include file="update-company.jsp"%>
      </div>
      <div ng-show="tabActive==5">
        <h4 class="list-group-item-heading">
          <a href="#">rest/company/add-employee</a>
        </h4>
        </br>
        <%@ include file="add-employee.jsp"%>
      </div>
      <div ng-show="tabActive==6">
        <h4 class="list-group-item-heading">
          <a href="#">rest/company/add-owner</a>
        </h4>
        </br>
        <%@ include file="add-owner.jsp"%>
      </div>
    </div>
    <div>{{ result }}</div>
  </div>
</body>
</html>