<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Page</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
    <script type="text/javascript" src="https://gc.kis.v2.scr.kaspersky-labs.com/D3068739-CCA8-C74A-8424-09595518A6BD/main.js" charset="UTF-8"></script><link rel="stylesheet" crossorigin="anonymous" href="https://gc.kis.v2.scr.kaspersky-labs.com/19755D18-8B6A-414A-ABBC-FB425EA05122/abn/main.css"/><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <script src="script.js"></script>
  </head>
  <body>
  <section class="hero is-fullheight is-bold is-warning" id="b3">
    <div class="field">
            <div class="control">
              <div class="btn btn-danger btn-md">
                <button class="button is-danger logs"
                  OnClick=" location.href='logout.jsp' ">Logout</button>
              </div>
            </div>
          </div>
  <div class="hero-body animated fadeInUp">
    <div class="container">
        <h1 class="title main-title">
          <center>Welcome Admin</center>
        </h1>
        <div class="columns">
        <div class="column is-half">
          <div class="card" id="show2">
           <div class="card-image is-flex is-horizontal-center">
              <figure class="image is-128x128">
             <img class="is-rounded" src="https://bulma.io/images/placeholders/128x128.png">
              </figure>
            </div>
            <div class="card-content">
              <div class="title"><center>Add Kid</center></div>
              <br />
              <div class="subtitle"><center></center></div>
            </div>
          </div>
        </div>
        <div class="column is-half">
          <div>
          <div class="card">
            <div class="card-image is-flex is-horizontal-center">
              <figure class="image is-128x128">
             <img class="is-rounded" src="https://bulma.io/images/placeholders/128x128.png">
              </figure>
            </div>
            <div class="card-content">
              <div class="title"><center>Donation Logs</center></div>
              <br />
              <div class="subtitle"><center></center></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div id="hidden2">
    <div class="columns animated fadeInUp">
      <div class="column is-half is-offset-one-quarter">
        <div class="card">
          <div class="card-content">
            <form action="donate_back.jsp" method="POST">
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
                    placeholder="Enter Last Name"> <span
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
                <label class="label">Donate Item:</label>
                <div class="control has-icons-left has-icons-right">
                  <input class="input is-rounded" name="item" type="text"
                    placeholder="Enter Item Names" required>
                </div>
              </div>

              <div class="field">
                <label class="label">Donate Funds:</label>
                <div class="control has-icons-left has-icons-right">
                  <input class="input is-rounded" name="money" type="Number"
                    placeholder="Enter amount" min="1000" max="200000">
                </div>
              </div>
              <br>
              <div class="field">
                <div class="control">
                  <center><button class="button is-link">Donate</button></center>
                </div>
              </div>
            </form>
            <div class="field">
              <div class="control">
                <center><button class="button is-danger" id="close2"
                  style="margin-top: 2vh;">Cancel</button></center>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</section>
</body>
</html>
