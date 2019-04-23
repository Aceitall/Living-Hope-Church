<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Directory_Admin.aspx.cs" Inherits="LivingHopeChurch.Directory_Admin" %>

<!DOCTYPE html>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <title>Directory</title>
    <style>
        .sidenav {
            height: auto;
            width: 0;
            position: absolute;
            overflow-x: hidden;
            top: 34px;
            left: 0;
            transition: 0.1s;
            padding-top: 10px;
            background-color: #282B2D;
        }

            .sidenav a {
                padding-left: 30px;
                padding-bottom: 5px;
                text-decoration: none;
                font-size: 20px;
                color: white;
                display: block;
                transition: 0.1s;
            }

                .sidenav a:hover {
                    color: lightgrey;
                }

        .Home {
            font-size: large;
            font-family: Comfortaa;
            color: white;
            display: block;
            transition: 0.1s;
        }

        a:hover {
            color: lightgrey;
        }

        .Text {
            font-size: 16px;
            font-family: Comfortaa;
            color: white;
        }

        .Headers {
            font-size: x-large;
            font-family: Comfortaa;
            color: white;
        }

        .Title {
            font-size: xx-large;
            font-family: Comfortaa;
            color: white;
        }

        .Player {
            padding-top: 10px;
            position: relative;
        }

        @media screen and (max-width: 420px) {
            .sidenav {
                padding-top: 15px;
            }

                .sidenav a {
                    font-size: 18px;
                }

            #loader {
                position: fixed;
                left: 43%;
                top: 40%;
            }
        }

        body {
            background-color: #282B2D;
        }
    </style>
    <script>
        function Click() {
            if (document.getElementById("SideBar").style.width == "120px") {
                document.getElementById("SideBar").style.width = "0";
            }
            else {
                document.getElementById("SideBar").style.width = "120px";
            }
        }
        function Logout() {
            localStorage.User = "";
            localStorage.Type = "";
            localStorage.Key = "";
            location.replace("http://localhost:50455/Login.aspx");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 100%; height: 100%">
            <div id="SideBar" class="sidenav">
                <a href="Ministry_Admin.aspx">Ministry</a>
                <a href="Sermon_Admin.aspx">Sermons</a>
                <a href="#">Directory</a>
                <a href="Offering_Admin.aspx">Offering</a>
                <a href="Profile_Admin.aspx">Profile</a>
            </div>
            <div class="d-flex flex-row justify-content-start">
                <div class="p" style="padding-left: 10px">
                    <span style="color: white; font-size: 30px; cursor: pointer" onclick="Click()">&#9776;</span>
                </div>
                <div class="p" style="padding: 11px 0px 0px 10px">
                    <a href="Home_Admin.aspx" class="Home" style="text-decoration: none">Living Hope Church</a>
                </div>
                <div class="ml-auto p-2">
                    <button type="button" onclick="Logout()" class="btn btn-light">Logout</button>
                </div>
                <div class="p-1"></div>
            </div>
            <div class="d-flex p-4 justify-content-center">
                <div>
                    <div id="Title">
                        <p class="Title">Directory</p>
                    </div>
                </div>
            </div>
            <div class="d-flex p-1 justify-content-center">
                <div>
                    <div id="Fname">
                        <p class="Headers">First Name</p>
                    </div>
                </div>
                <div class="p-4"></div>
                <div>
                    <div id="Lname">
                        <p class="Headers">Last Name</p>
                    </div>
                </div>
                <div class="p-4"></div>
                <div>
                    <div id="Number">
                        <p class="Headers">Number</p>
                    </div>
                </div>
                <div class="p-4"></div>
                <div>
                    <div id="Email">
                        <p class="Headers">Email</p>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
<script src="https://www.gstatic.com/firebasejs/5.8.2/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.8.2/firebase-firestore.js"></script>
<script>
    firebase.initializeApp({
        apiKey: "AIzaSyArcbqxkogFHes_uI7qcuaUKB05z4h1FMg",
        authDomain: "living-hope-church.firebaseapp.com",
        projectId: "living-hope-church"
    });
    var node1 = document.getElementById("Fname");
    var node2 = document.getElementById("Lname");
    var node3 = document.getElementById("Number");
    var node4 = document.getElementById("Email");
    var db = firebase.firestore();
    var user = localStorage.User;
    if (user == "") {
        location.replace("http://localhost:50455/Login.aspx")
    }
    var docRef = db.collection("User").doc(user);
    var type = localStorage.Type;
    docRef.get().then(function (doc) {
        if (doc.exists) {
            const userdata = doc.data();
            check = userdata.Encrypt;
            if (type == "Admin") {
                if (check != localStorage.Key) {
                    localStorage.User = "";
                    localStorage.Type = "";
                    localStorage.Key = "";
                    location.replace("http://localhost:50455/Login.aspx")
                }
            }
            else {
                if (type == "")
                    location.replace("http://localhost:50455/Registration.aspx");
                else if (type == "Admin")
                    location.replace("http://localhost:50455/Directory_Admin.aspx");
                else if (type == "Guest")
                    location.replace("http://localhost:50455/Home_Guest.aspx");
            }
        }
    });
    var fname, lname, number, email;
    db.collection("User").get().then(function (querySnapshot) {
        querySnapshot.forEach(function (doc) {
            const userdata = doc.data();
            fname = userdata.First_Name;
            lname = userdata.Last_Name;
            number = userdata.Number;
            email = userdata.Email;
            node1.innerHTML += "<div class='d-flex' style='height: 40px'><p class='Text'>" + fname + "</p></div>";
            node2.innerHTML += "<div class='d-flex' style='height: 40px'><p class='Text'>" + lname + "</p></div>";
            node3.innerHTML += "<div class='d-flex' style='height: 40px'><p class='Text'>" + number + "</p></div>";
            node4.innerHTML += "<div class='d-flex' style='height: 40px'><p class='Text'>" + email + "</p></div>";
        });
    });
</script>
