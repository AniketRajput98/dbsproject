<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
<script type="text/javascript"
	src="https://gc.kis.v2.scr.kaspersky-labs.com/D3068739-CCA8-C74A-8424-09595518A6BD/main.js"
	charset="UTF-8"></script>
<link rel="stylesheet" crossorigin="anonymous"
	href="https://gc.kis.v2.scr.kaspersky-labs.com/19755D18-8B6A-414A-ABBC-FB425EA05122/abn/main.css" />
<script defer
	src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
</head>
<body class="animated fadeInUp">
	<div class="align"></div>
	<h1 class="title main-title">
		<center>Login</center>
	</h1>
	<div class="columns">
		<div class="column is-half is-offset-one-quarter">
			<div class="card">
				<div class="card-content">
					<form action="log_back.jsp" method="post">
						<div class="field">
							<label class="label">Username:</label>
							<div class="control has-icons-left has-icons-right">
								<input class="input is-rounded" name="userid" type="text"
									placeholder="Enter Username" required> <span
									class="icon is-small is-left"> <i class="fas fa-user"></i>
								</span>
							</div>
						</div>

						<div class="field">
							<label class="label">Password:</label>
							<p class="control has-icons-left">
								<input class="input is-rounded" name="password" type="password"
									placeholder="Password" required> <span
									class="icon is-small is-left"> <i class="fas fa-lock"></i>
								</span>
							</p>
						</div>

						<div class="terms">
							<div class="field">
								<div class="control">
									<label class="checkbox"> <input type="checkbox" name="check" value="true">
										Sign in as Admin
									</label>
								</div>
							</div>
						</div>

						<div class="field is-grouped">
							<div class="control">
								<button class="button is-link">Login</button>
							</div>
					</form>
				</div>
				<div class="register">
					<a href="register.jsp">Not registered?</a>

				</div>

			</div>

		</div>
	</div>
	</div>
	</div>
</body>
</html>