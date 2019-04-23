<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LivingHopeChurch.Login" %>

<!DOCTYPE html>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style type="text/css">
        .auto-style2 {
            font-family: Comfortaa;
            font-size: large;
            color: white;
            line-height: 25px;
        }

        h2 {
            color: white;
            font-family: Comfortaa;
            font-size: x-large;
            text-align: center;
        }

        .Input_Size {
            margin: 0px;
            max-height: 28px;
        }

        .Img {
            display: block;
            margin: auto;
            padding: 5px;
        }

        .input-flex p {
            width: 110px;
            text-align: left;
        }

        .Small {
            width: 360px;
            margin: auto;
        }

        @media screen and (max-width: 320px) {
            .Input_Size {
                font-size: small;
            }

            .Small {
                width: auto;
            }
        }
    </style>
</head>
<body style="background-color: #282B2D">
    <form id="form1" runat="server">
        <div style="text-align: center; padding-top:30px"">
            <asp:Image class="Img" ID="Image1" runat="server" Height="100px" Style="text-align: left" ImageUrl="~/favicon.ico" />
            <div>
                <div class="p-1"></div>
                <h2>Login</h2>
                <asp:TextBox Width="320px" ID="Label1" runat="server" Style="padding: 2px; text-align: center" BackColor="#282B2D" Font-Names="Comfortaa" Font-Size="Small" ForeColor="White" BorderStyle="None" ReadOnly="True" Rows="2"></asp:TextBox>
                <div class="Small">
                    <div style="display: flex; justify-content: space-around;" class="input-flex">
                        <p class="auto-style2">Username</p>
                         <input class="Input_Size" type="text" id="Username" runat="server" style="background-color: #282B2D; border-color: White; border-style: Ridge; font-family: Comfortaa; color: White" />
                    </div>
                    <div style="display: flex; justify-content: space-around;" class="input-flex">
                        <p class="auto-style2">Password</p>
                        <input class="Input_Size" type="password" id="Password" runat="server" style="background-color: #282B2D; border-color: White; border-style: Ridge; font-family: Comfortaa; color: White" />
                    </div>
                </div>
                <div class="d-flex">
                    <div class="ml-auto p-2">
                        <button type="button" id="Button1" class="btn btn-success" onclick="LoginClick()">Login</button>
                    </div>
                    <div class="p-2"></div>
                    <div class="mr-auto p-2">
                        <asp:Button ID="Button2" class="btn btn-light" runat="server" Text="Login as Guest" OnClick="Guest_Click" />
                    </div>
                </div>
                <div class="p-2"></div>
                <span class="auto-style2">Don't have an account yet? Click
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Registration.aspx" ForeColor="White">here</asp:HyperLink>
                    to register</span><br />
            </div>
        </div>
        <asp:HiddenField ID="HiddenField1" runat="server" />
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
    var db = firebase.firestore();
    function LoginClick() {
        document.getElementById("Label1").value = "";
        var user = document.getElementById("Username").value;
        var pass = document.getElementById("Password").value;

        if (user === null || pass === null) {
            document.getElementById("Label1").value = "Username or Password cannot be empty"
        }
        var docRef = db.collection("User").doc(user);
        docRef.get().then(function (doc) {
            if (doc.exists) {
                const userdata = doc.data();
                if (pass === userdata.Password) {       
                    localStorage.Type = userdata.Usertype;
                    if (userdata.Usertype === "Guest") {
                        location.replace("http://localhost:50455/Home_Guest.aspx");
                    }
                    localStorage.User = userdata.Username;
                    localStorage.Key = userdata.Encrypt;
                    if (userdata.Usertype === "Member") {
                        location.replace("http://localhost:50455/Home.aspx");
                    }
                    else if (userdata.Usertype === "Admin") {
                        location.replace("http://localhost:50455/Home_Admin.aspx");
                    }
                }
                else {
                    document.getElementById("Label1").value = "Username or Password is incorrect";
                }
            }
            else {
                document.getElementById("Label1").value = "Username doesn't exist";
            }
        });
    }
</script>
