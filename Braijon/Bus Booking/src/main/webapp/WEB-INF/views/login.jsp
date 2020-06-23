<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Sign in to your Account</title>
    <meta name="description" content="Sign in to your Busbud user account to access your trip information.">
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
	<meta name="theme-color" content="#127ccb">
	<link rel="stylesheet" href="https://busbud-pubweb-assets.global.ssl.fastly.net/css/4a975af.app-bb.css">
  </head>
  <body>
    <div class="content" id="content-atf">
      <div class="d-flex header">
        <div class="header-container justify-content-between justify-content-lg-start">
          <ul class="nav-pills d-flex">
			<li class="nav-item dropdown d-none d-lg-flex">
              <div><a id="js-header-signin-link" href="${contextPath}/login" class="pill nav-link">Sign in</a></div>
            </li>
          </ul>
        </div>
      </div>
      <div id="content">
        <div id="react-content">
          <div class="container">
            <div class="row small-collapse">
              <div class="column medium-8 medium-push-2">
                <div class="mx-3 my-4">
                  <h3>Sign in to your Account</h3>
                  <h6 class="font-weight-normal text-secondary"><span>Don&#x27;t have an account? <a href="${contextPath}/register">Sign up</a></span></h6>
                </div>
                <form method="POST">
                  <div class="card">
                    <h1 class="card-header">Sign in with email</h1>
                    <div class="card-block">
                      <div class="form-group"><label>Username</label><input name="username" type="text" class="form-control" value="" placeholder="Username" tabindex="1"/></div>
                      <div class="form-group"><label>Password</label><input name="password" type="password" class="form-control" value="" placeholder="Password" tabindex="2"/></div>
                      <div><a href="javascript:void(0)">Forgot your password?</a></div>
                      <div class="mt-4"><button type="submit" class="btn btn-primary btn-block">Sign In</button></div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="content" id="content-btf">
      <!-- @split-content-->
      <footer class="footer" id="mobile-footer">
        <div class="row pt-1">
          <ul>
            <li><a href="${contextPath}/login" rel="noopener">Sign in</a></li>
          </ul>
        </div>
      </footer>
      <div class="footer-addendum">© 2020 Ticket Booking Project | All rights reserved</div>
      <noscript>
        <div>Enable Javascript for correct site display</div>
      </noscript>
    </div>
  </body>
</html>