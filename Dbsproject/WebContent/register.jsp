<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Register</title>
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
<body class="animated fadeInUp" id="color">
  <div class="space"></div>
  <div class="field">
          <div class="control" style="margin-right:10vw;">
            <div class="btn btn-danger btn-md" style="text-align: right;">
              <button class="button is-danger"
                OnClick=" location.href='login.jsp' ">Back to login</button>
            </div>
          </div>
        </div>
  <div class="columns">
    <div class="column is-half is-offset-one-quarter">
      <div class="card">
        <div class="card-content">
          <form action="reg_back.jsp" method="post">
            <div class="field">
              <label class="label">First name:</label>
              <div class="control has-icons-left has-icons-right">
                <input class="input is-rounded" name="firstname" type="text"
                  placeholder="Enter First Name" required> <span
                  class="icon is-small is-left"> <i class="fas fa-user"></i>
                </span>
              </div>
            </div>
            <div class="field">
              <label class="label">Last name:</label>
              <div class="control has-icons-left has-icons-right">
                <input class="input is-rounded" name="lastname" type="text"
                  placeholder="Enter Last Name" required> <span
                  class="icon is-small is-left"> <i class="fas fa-user"></i>
                </span>
              </div>
            </div>
            <div class="field">
              <label class="label">Email:</label>
              <div class="control has-icons-left has-icons-right">
                <input class="input is-rounded" name="email" type="email"
                  placeholder="Enter Email ID" required> <span
                  class="icon is-small is-left"> <i
                  class="fas fa-envelope"></i>
                </span>
              </div>
            </div>

            <div class="field">
              <label class="label">Social Security Number:</label>
              <p class="control has-icons-left">
                <input class="input is-rounded" name="ssn" type="password"
                  placeholder="Social Security Number" required> <span
                  class="icon is-small is-left"> <i class="fas fa-lock"></i>
                </span>
              </p>
            </div>

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
                  <label class="checkbox"> <input type="checkbox">
                    I agree to the <a href="#">terms and conditions</a>
                  </label>
                </div>
              </div>
            </div>
            <div class="field is-grouped">
              <div class="control">
                <button class="button is-link">Submit</button>
              </div>
              <div class="control">
                <button class="button is-text" type="reset">Reset</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  </div>
  <div class="space"></div>
</body>
</html>
