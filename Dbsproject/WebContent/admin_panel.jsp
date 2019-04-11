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

    <div class="columns">
        <div class="column is-half">
          <div class="card">
           <div class="card-image is-flex is-horizontal-center">
              <figure class="image is-128x128">
             <img class="is-rounded" src="https://bulma.io/images/placeholders/128x128.png">
              </figure>
            </div>
            <div class="card-content">
              <div class="title"><center>View Kids</center></div>
              <br />
              <div class="subtitle"><center></center></div>
            </div>
          </div>
        </div>

        <div class="column is-half">
          <div>
          <div class="card" id="show3">
            <div class="card-image is-flex is-horizontal-center">
              <figure class="image is-128x128">
             <img class="is-rounded" src="https://bulma.io/images/placeholders/128x128.png">
              </figure>
            </div>
            <div class="card-content">
              <div class="title"><center>Add Caretaker</center></div>
              <br />
              <div class="subtitle"><center></center></div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="columns">
        <div class="column is-half">
          <div class="card">
           <div class="card-image is-flex is-horizontal-center">
              <figure class="image is-128x128">
             <img class="is-rounded" src="https://bulma.io/images/placeholders/128x128.png">
              </figure>
            </div>
            <div class="card-content">
              <div class="title"><center>View Caretaker</center></div>
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
              <div class="title"><center>View Med Records</center></div>
              <br />
              <div class="subtitle"><center></center></div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="columns">
        <div class="column is-half">
          <div class="card" id="show4">
           <div class="card-image is-flex is-horizontal-center">
              <figure class="image is-128x128">
             <img class="is-rounded" src="https://bulma.io/images/placeholders/128x128.png">
              </figure>
            </div>
            <div class="card-content">
              <div class="title"><center>Update Med Records</center></div>
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
              <div class="title"><center>View Adoptive Parents</center></div>
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
                <label class="label">Kid ID:</label>
                <div class="control has-icons-left has-icons-right">
                  <input class="input is-rounded" name="k_id" type="Number"
                    placeholder="Enter kid id" required min="1" maxlength="11"> <span
                    class="icon is-small is-left"> 
                  </span>
                </div>
              </div>

              <div class="field">
                <label class="label">Name:</label>
                <div class="control has-icons-left has-icons-right">
                  <input class="input is-rounded" name="name" type="text"
                    placeholder="Enter name" required> <span
                    class="icon is-small is-left"> <i class="fas fa-user"></i>
                  </span>
                </div>
              </div>

              <div class="field">
                <label class="label">Age:</label>
                <div class="control has-icons-left has-icons-right">
                  <input class="input is-rounded" name="age" type="Number"
                    placeholder="Enter age" min="0"> <span
                    class="icon is-small is-left"> 
                  </span>
                </div>
              </div>

              <div class="field">
                <label class="label">Blood Group:</label>
                <p class="control has-icons-left">
                  <input class="input is-rounded" name="bloodgroup" type="text"
                    placeholder="Blood Group" pattern="[A-z][A-z][-+]{2-3}"> <span
                    class="icon is-small is-left"> 
                </p>
              </div>

              <div class="control">
                <label class="label">Gender:</label>
              <label class="radio">
                <input type="radio" name="gender" checked="checked" value="1">
                Male
              </label>
              <br>
              <label class="radio">
                <input type="radio" name="gender" value="2">
                Female
              </label>
              <br>
              </div>

              <div class="field">
                <label class="label">Ethnicity:</label>
                <div class="control has-icons-left has-icons-right">
                  <input class="input is-rounded" name="ethnicity" type="text"
                    placeholder="Enter ethnicity">
                </div>
              </div>

              <div class="field">
                <label class="label">Adoptive ID:</label>
                <div class="control has-icons-left has-icons-right">
                  <input class="input is-rounded" name="ad_id" type="Number"
                    placeholder="Enter adoptive parent id" min="1" maxlength="11"> <span
                    class="icon is-small is-left"> 
                  </span>
                </div>
              </div>

              <div class="field">
                <label class="label">Caretaker ID:</label>
                <div class="control has-icons-left has-icons-right">
                  <input class="input is-rounded" name="cid" type="Number"
                    placeholder="Enter caretaker id" required min="1" maxlength="11"> <span
                    class="icon is-small is-left"> 
                  </span>
                </div>
              </div>

              <div class="field">
                <label class="label">Med ID:</label>
                <div class="control has-icons-left has-icons-right">
                  <input class="input is-rounded" name="med_id" type="Number"
                    placeholder="Enter med id" required min="1" maxlength="11"> <span
                    class="icon is-small is-left"> 
                  </span>
                </div>
              </div>

              <br>
              <div class="field">
                <div class="control">
                  <center><button class="button is-link">Add</button></center>
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

  <div id="hidden3">
    <div class="columns animated fadeInUp">
      <div class="column is-half is-offset-one-quarter">
        <div class="card">
          <div class="card-content">
            <form action="donate_back.jsp" method="POST">

              <div class="field">
                <label class="label">Caretaker ID:</label>
                <div class="control has-icons-left has-icons-right">
                  <input class="input is-rounded" name="cid" type="Number"
                    placeholder="Enter caretaker id" required min="1" maxlength="11"> <span
                    class="icon is-small is-left"> 
                  </span>
                </div>
              </div>

              <div class="field">
                <label class="label">Social Security Number:</label>
                <p class="control has-icons-left">
                  <input class="input is-rounded" name="ssn" type="password"
                    placeholder="Social Security Number" required pattern="^\s*-?[0-9]{12}\s*$"> <span
                    class="icon is-small is-left"> <i class="fas fa-lock"></i>
                  </span>
                </p>
              </div>

              <div class="field">
                <label class="label">Name:</label>
                <div class="control has-icons-left has-icons-right">
                  <input class="input is-rounded" name="name" type="text"
                    placeholder="Enter name" required> <span
                    class="icon is-small is-left"> <i class="fas fa-user"></i>
                  </span>
                </div>
              </div>

              <div class="field">
                <label class="label">Phone:</label>
                <div class="control has-icons-left has-icons-right">
                  <input class="input is-rounded" name="contact_number" type="Number"
                    placeholder="Enter phone number" pattern="^\s*-?[0-9]{10}\s*$" required> <span
                    class="icon is-small is-left"> 
                  </span>
                </div>
              </div>

              <br>
              <div class="field">
                <div class="control">
                  <center><button class="button is-link">Add</button></center>
                </div>
              </div>
            </form>
            <div class="field">
              <div class="control">
                <center><button class="button is-danger" id="close3"
                  style="margin-top: 2vh;">Cancel</button></center>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div id="hidden4">
    <div class="columns animated fadeInUp">
      <div class="column is-half is-offset-one-quarter">
        <div class="card">
          <div class="card-content">
            <form action="donate_back.jsp" method="POST">

              <div class="field">
                <label class="label">Med ID:</label>
                <div class="control has-icons-left has-icons-right">
                  <input class="input is-rounded" name="med_id" type="Number"
                    placeholder="Enter caretaker id" required min="1" maxlength="11"> <span
                    class="icon is-small is-left"> 
                  </span>
                </div>
              </div>

              <div class="field">
                <label class="label">Medical Condition:</label>
                <div class="control has-icons-left has-icons-right">
                  <input class="input is-rounded" name="med_condition" type="text"
                    placeholder="Enter condition" required> <span
                    class="icon is-small is-left"> <i class="fas fa-user"></i>
                  </span>
                </div>
              </div>
              
              <div class="field">
                <label class="label">Condition Description:</label>
                <div class="control">
                <textarea class="textarea" placeholder="Enter description" name="description"></textarea>
              </div>
            </div>
                

              <br>
              <div class="field">
                <div class="control">
                  <center><button class="button is-link">Add</button></center>
                </div>
              </div>
           
            <div class="field">
              <div class="control">
                <center><button class="button is-danger" id="close4"
                  style="margin-top: 2vh;">Cancel</button></center>
              </div>
            </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>
