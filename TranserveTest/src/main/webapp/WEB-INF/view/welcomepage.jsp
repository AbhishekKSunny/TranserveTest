<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Login | home</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">

</head>
<body>
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">Transerve</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/login">Login</a></li>
					<li><a href="/register">Sign UP</a></li>
					<li><a href="/show-users">All Users</a></li>
				</ul>
			</div>
		</div>

		<c:choose>
			<c:when test="${mode=='MODE_HOME' }">
				<h1>Welcome to Transerve</h1>
				<h3>Lets Do some Coding !!</h3>
	</div>
	</div>

	</c:when>
	<c:when test="${mode=='MODE_REGISTER' }">
		<div align="center">
			<h2>Signup Page</h2>
			<form method="POST" action="save-user">
				<table>
					<tr>
						<td><input type="hidden" name="id" value="${user.id }" /></td>
					</tr>
					<tr>
						<td>User Name</td>
						<td><input type="text" name="username"
							value="${user.username }" /></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><input type="text" name="email" value="${user.email }" /></td>
					</tr>
					<tr>
						<td>Organisation ID</td>
						<td><input type="text" name="organisation"
							value="${user.organisation }" /></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="password"
							value="${user.password }" /></td>
					</tr>
					<tr>
						<td>Confirm</td>
						<td><input type="password" name="confirm"
							value="${user.confirm }" /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Register" /></td>
					</tr>
				</table>
				<div style="color: red">${error}</div>
		</div>
		</form>

	</c:when>

	<c:when test="${mode=='MODE_LOGIN' }">
	
		<div align="center">
			<h3>User Login</h3>
			<hr>
			<form method="POST" action="/login-user">
			<table>
				<c:if test="${not empty error }">
					<div class="alert alert-danger">
						<c:out value="${error }"></c:out>
					</div>
				</c:if>
					<tr>
						<td>User Name</td>
						<td><input type="text" name="username"
							value="${user.username }" /></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="password"
							value="${user.password }" /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Login" /></td>
					</tr>
				</table>
	</c:when>
	
			<c:when test="${mode=='ALL_USERS' }">
				<div class="container text-center" id="tasksDiv">
					<h3>All Users</h3>
					<hr>
					<div class="table-responsive">
						<table class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>Id</th>
									<th>UserName</th>
									<th>Email</th>
									<th>Organisation ID</th>
									<th>Password</th>
									<th>Delete</th>
									<th>Edit</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="user" items="${users }">
									<tr>
										<td>${user.id}</td>
										<td>${user.username}</td>
										<td>${user.email}</td>
										<td>${user.organisation}</td>
										<td>${user.password}</td>
										<td><a href="/delete-user?id=${user.id }"><span
												class="glyphicon glyphicon-trash"></span></a></td>
										<td><a href="/edit-user?id=${user.id }"><span
												class="glyphicon glyphicon-pencil"></span></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</c:when>
	</c:choose>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>