<!DOCTYPE html>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<html lang="en-US" data-ng-app="Myapp">
<head>
<%@include file="/WEB-INF/includes/Frameworks.jsp"%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<link href="resources/css/login.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/AngularControllers/App.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/AngularControllers/Home.js"></script>

<body >

<nav class="navbar navbar-dark bg-primary navbar-fixed-top" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
       
   
      <a class="navbar-brand" href="login" style="color:white;font-family:snap ITC">C H A T B O X</a>
       <i class="fa fa-contao" style="font-size:48px;color:red"></i>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
    
      
      <sec:authorize access="isAuthenticated()">
					  <li><a style="color: white">Hello  <b><sec:authentication property="principal.username" /></b></a></li>
						<li><a href="${pageContext.request.contextPath}/perform_logout" style="color:white;">Logout</a></sec:authorize>
						
						
						<li><a href="${pageContext.request.contextPath}/blog" style="color:white;">Blog</a></li>
					<li><a href="${pageContext.request.contextPath}/forum" style="color:white;">Forum</a></li>
					<li><a href="${pageContext.request.contextPath}/chat" style="color:white;">Chat</a></li></ul>
         <!-- <li><a href="#">Blog</a></li>
        <li><a href="#">Forum</a></li>
        <li><a href="#">Chat</a></li>  -->
        <!-- <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul> 
        </li>
      </ul> -->
       <!-- <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>  -->
      <ul class="nav navbar-nav navbar-right">
      		<sec:authorize access="!isAuthenticated()">
        <li><p class="navbar-text">Already have an account?</p></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color:white;"><b>Login</b> <span class="caret"></span></a>
			<ul id="login-dp" class="dropdown-menu">
				<li>
				<!-- <form action="perform_login" method="post"> -->
					 <div class="row">
			
					  <form action="perform_login" method="post"><!-- <span
								class="glyphicon glyphicon-log-out"></span></a></li>
					   -->
							<div class="col-md-12" style="color:black;">
								Login via
								<div class="social-buttons">
									<a href="http://www.facebook.com" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
									<a href="http://twitter.com" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
								</div>
                                or
                                
                                
								 <!-- <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav"> -->
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2"> username</label>
											 <input type="text" class="form-control" id="username" name="username" placeholder="Enter Username" required>
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputPassword2">password</label>
											 <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
                                             <div class="help-block text-right"><a href="">Forget the password ?</a></div>
										</div>
										<div class="form-group">
											 <button type="submit" class="btn btn-primary btn-block">Sign in</button>
										</div>
										<div class="checkbox" style="color:black;">
											 <label>
											 <input type="checkbox"> keep me logged-in
											 </label>
										</div>
								 </form>
							</div>
							<div class="bottom text-center" style="color:black;">
								New here ? <a href="#" ><b>Join Us</b></a>
							</div>
					 </div>
				</li>
				</sec:authorize>
			</ul>
        </li>
       
        <ul class="nav navbar-nav navbar-center"><sec:authorize access="!isAuthenticated()">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color:white;"><b>Register</b> <span class="caret"></span></a>
			<ul id="login-dp" class="dropdown-menu">
				<li>
					 <div class="row">
							<div class="col-md-12" style="color:black;">
								Register via
								<div class="social-buttons">
									<a href="http://www.facebook.com" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
									<a href="http://twitter.com" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
								</div>
                                or
                                <form role="form" data-ng-submit="submit()"
						data-ng-controller="RegController" method="post">
								<!--  <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav"> -->
								 <div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">Name</label>
											 <input type="text" class="form-control" id="exampleInputEmail2" placeholder="name" required data-ng-model="name">
											 
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">UserName</label>
											 <input type="text" class="form-control" id="exampleInputEmail2" placeholder="username" required data-ng-model="username">
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">Password</label>
											 <input type="password" class="form-control" id="exampleInputEmail2" placeholder="password" required data-ng-model="password">
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">Re Enter password</label>
											 <input type="password" class="form-control" id="exampleInputEmail2" placeholder="re enter password" required data-ng-model="Confirm_Password">
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">Email address</label>
											 <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required data-ng-model="email">
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">Mobile No.</label>
											 <input type="text" class="form-control" id="exampleInputEmail2" placeholder="mobile no." required data-ng-model="mobile">
										</div>
										<!-- <div class="form-group">
											 <label class="sr-only" for="exampleInputPassword2">Password</label>
											  <label class="sr-only" for="exampleInputPassword2">Password</label>
											 <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required>
                                             <div class="help-block text-right"><a href="">Forget the password ?</a></div>
										</div> -->
										<p style="color:black;">By clicking Create an account, you agree to our Terms and
							that you have read our Data Policy, including our Cookie Use.</p>
										<div class="form-group">
											 <button type="submit" class="btn btn-primary btn-block">Register</button>
										</div>
										<!-- <div class="checkbox">
											 <label>
											 <input type="checkbox"> keep me logged-in
											 </label>
										</div> -->
								 </form>
							</div>
							<div class="bottom text-center">
								New here ? <a href="#"><b>Join Us</b></a>
							</div>
					 </div>
				</li>
			</ul>
        </li>
        </sec:authorize>
      </ul>
      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<%-- <div id="tabs" class="container" style="margin-top: 25px">
		<ul>
			<li><a href="#fragment-1">Blog</a></li>
			<li><a href="#fragment-2">Forum</a></li>
			<li><a href="#fragment-3">Chat</a></li>
		</ul>
		<div id="fragment-1">
			<%@include file="/WEB-INF/jsp/Blog.jsp"%>
		</div>
		<div id="fragment-2">
			<%@include file="/WEB-INF/jsp/Forum.jsp"%>
		</div>
		<div id="fragment-3">
			<%@include file="/WEB-INF/jsp/Chat.jsp"%>
		</div>
	</div>
	<script>
		$(function() {
			$("#tabs").tabs();
		});
	</script> --%>
	<%-- <header><%@include file="/WEB-INF/includes/Header.jsp"%></header> --%>

	<c:choose>
	<c:when test="${loginClicked}">
			<div class="container">
				<c:import url="/WEB-INF/jsp/login.jsp">
				</c:import>
			</div>
		</c:when>
		<c:when test="${BlogClicked}">
			<div class="container">
				<c:import url="/WEB-INF/jsp/Blog.jsp">
				</c:import>
			</div>
		</c:when>
		<c:when test="${ForumClicked}">
			<div class="container">
				<c:import url="/WEB-INF/jsp/Forum.jsp">
				</c:import>
			</div>
		</c:when>
		<c:when test="${IndividualForum}">
			<div class="container">
				<c:import url="/WEB-INF/jsp/IndividualForum.jsp">
				</c:import>
			</div>
		</c:when>
		<c:when test="${IndividualBlog}">
			<div class="container">
				<c:import url="/WEB-INF/jsp/IndividualBlog.jsp">
				</c:import>
			</div>
		</c:when>
		<c:when test="${ChatClicked}">
			<div class="container">
				<c:import url="/WEB-INF/jsp/Chat.jsp">
				</c:import>
			</div>
		</c:when>
		<c:otherwise>
			<sec:authorize access="hasRole('ROLE_USER')">
				<div class="container">
					<c:import url="/WEB-INF/jsp/Body.jsp">
					</c:import>
				</div>
			</sec:authorize>
			</c:otherwise>
	</c:choose>
	
<Footer><%@include file="/WEB-INF/includes/Foot.jsp"%></Footer>
	<script type="text/javascript">
		$(document).ready(function() {
			if (window.location.href.indexOf('#login') != -1) {
				$('#login').modal('show');
			}
		});
	</script>


</body>
</html>