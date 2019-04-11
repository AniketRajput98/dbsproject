<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Main Page</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
    <script defer src="script.js" type="text/javascript"></script>
  </head>
  <body>
  <section class="hero is-fullheight is-bold  animated fadeInUp is-warning" id="b3">
    <div class="control">
          <button class="button is-danger logs">Logout</button>
      </div>
  <div class="hero-body">
    <div class="container">
      <h1 class="title main-title">
        <center>Welcome</center>
      </h1>
      <div class="columns">
        <div class="column is-half">
          <div class="card" id="show1">
           <div class="card-image is-flex is-horizontal-center">
              <figure class="image is-128x128">
             <img class="is-rounded" src="https://bulma.io/images/placeholders/128x128.png">
              </figure>
            </div>
            <div class="card-content">
              <div class="title"><center>Search</center></div>
              <br />
              <div class="subtitle"><center>*Enter details*</center></div>
            </div>
          </div>
        </div>
        <div class="column is-half">
          <div class="card" id="show">
            <div class="card-image is-flex is-horizontal-center">
              <figure class="image is-128x128">
             <img class="is-rounded" src="https://bulma.io/images/placeholders/128x128.png">
              </figure>
            </div>
            <div class="card-content">
              <div class="title"><center>Donate</center></div>
              <br />
              <div class="subtitle"><center>*Enter details*</center></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<div>
<div class="columns animated fadeInUp">
  <div class="column is-half is-offset-one-quarter" id="hidden">
  <div class="card">
  <div class="card-content">
    <form action="donate_back.jsp" method="POST">
<div class="field">
  <label class="label">First name:</label>
  <div class="control has-icons-left has-icons-right">
    <input class="input is-rounded" name="firstname" type="text" placeholder="Enter First Name" required>
    <span class="icon is-small is-left">
      <i class="fas fa-user"></i>
    </span>
  </div>
</div>
<div class="field">
  <label class="label">Last name:</label>
  <div class="control has-icons-left has-icons-right">
    <input class="input is-rounded" name="lastname" type="text" placeholder="Enter Last Name">
    <span class="icon is-small is-left">
      <i class="fas fa-user"></i>
    </span>
  </div>
</div>
<div class="field">
  <label class="label">Email:</label>
  <div class="control has-icons-left has-icons-right">
    <input class="input is-rounded" name="email" type="email" placeholder="Enter Email ID" required>
    <span class="icon is-small is-left">
      <i class="fas fa-envelope"></i>
    </span>
  </div>
</div>

<div class="field">
  <label class="label">Social Security Number:</label>
  <p class="control has-icons-left">
    <input class="input is-rounded" name="ssn" type="password" placeholder="Social Security Number">
    <span class="icon is-small is-left">
      <i class="fas fa-lock"></i>
    </span>
  </p>
</div>

<div class="field">
  <label class="label">Username:</label>
  <div class="control has-icons-left has-icons-right">
    <input class="input is-rounded" name="userid" type="text" placeholder="Enter Username" required>
    <span class="icon is-small is-left">
      <i class="fas fa-user"></i>
    </span>
  </div>
</div>

<div class="field">
  <label class="label">Donate Item:</label>
  <div class="control has-icons-left has-icons-right">
    <input class="input is-rounded" name="item" type="text" placeholder="Enter Item Names" required>
  </div>
</div>

<div class="field">
  <label class="label">Donate Funds:</label>
  <div class="control has-icons-left has-icons-right">
    <input class="input is-rounded" name="money" type="Number" placeholder="Enter amount" required min="0" max="200000">
  </div>
</div>
<br>
<div class="field is-grouped">
  <div class="control">
    <button class="button is-link">Donate</button>
  </div>
  <div class="control" id="close">
    <button class="button is-text">Cancel</button>
</div>
</div>
</div>
</div>
</div>

<div class="column is-half is-offset-one-quarter" id="hidden1">
  <div class="card">
    <div class="card-content">
      <form action="search.jsp" method="POST">
          <div class="control">
              <label class="radio">
                <input type="radio" name="answer">
                Age
              </label>
              <br>
              <label class="radio">
                <input type="radio" name="answer">
                Ethinicity
              </label>
              <br>
              <label class="radio">
                <input type="radio" name="answer">
                Gender
              </label>
              <br>
          </div>
              <br>
              <div class="field">
                <label class="label">Search by:</label>
                  <div class="control has-icons-left has-icons-right">
                    <input class="input is-rounded" name="userid" type="text" placeholder="Enter Username" required>
                      <span class="icon is-small is-left">
                      <i class="fas fa-user"></i>
                      </span>
                   </div>
              </div>
              <br />
              <div class="field is-grouped">
                <div class="control">
                  <button class="button is-link">Search</button>
                </div>
                <div class="control" id="close1">
                  <button class="button is-text">Cancel</button>
                </div>
              </div>
      </form>
    </div>
  </div>
</div>

</body>
</html>
