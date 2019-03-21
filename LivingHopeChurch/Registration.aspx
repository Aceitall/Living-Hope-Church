<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="LivingHopeChurch.Registration"%>

<!DOCTYPE html>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
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
        }
        .Input_Size {
            margin: 0px;
            max-height:28px;
            font-size:medium;
        }
        .Img {
            display: block;
            margin: auto;
            padding: 5px;
        }
        .Small{
            width: 360px;
            margin: auto;
        }
        .input-flex p {
            width: 110px;
            text-align: left;
        }
        @media screen and (max-width: 320px) {
            .Input_Size {
                font-size: small;
            }
            .Small{
                width:auto;
            }
        }
    </style>
</head>
<body style="background-color: #282B2D">
    <form id="form1" runat="server">
        <div style="text-align: center">
            <asp:Image class="Img" ID="Image1" runat="server" Height="100px" ImageUrl="~/favicon.ico" />
            <div>
                <h2>Registration</h2>
                <asp:TextBox Width="320px" ID="Label1" runat="server" Style="padding:2px; text-align: center" BackColor="#282B2D" Font-Names="Comfortaa" Font-Size="Small" ForeColor="White" BorderStyle="None" ReadOnly="True" Rows="2"></asp:TextBox>
                <div class="Small">
                    <div style="display: flex; justify-content: space-around;" class="input-flex">
                        <p class="auto-style2">Username</p>
                        <asp:TextBox class="Input_Size" ID="TextBox1" runat="server" BackColor="#282B2D" BorderColor="White" BorderStyle="Ridge" Font-Names="Comfortaa" ForeColor="White" AutoPostBack="true"></asp:TextBox>
                    </div>
                    <div style="display: flex; justify-content: space-around;" class="input-flex">
                        <p class="auto-style2">Password</p>
                        <input class="Input_Size" type="password" id="Password" runat="server" style="background-color: #282B2D; border-color: White; border-style: Ridge; font-family: Comfortaa; color: White" />
                    </div>
                    <div style="display: flex; justify-content: space-around" class="input-flex">
                        <p class="auto-style2">First Name</p>
                        <asp:TextBox class="Input_Size" ID="TextBox3" runat="server" BackColor="#282B2D" BorderColor="White" BorderStyle="Ridge" Font-Names="Comfortaa" ForeColor="White"></asp:TextBox>
                    </div>
                    <div style="display: flex; justify-content: space-around;" class="input-flex">
                        <p class="auto-style2">Last Name</p>
                        <asp:TextBox class="Input_Size" ID="TextBox4" runat="server" BackColor="#282B2D" BorderColor="White" BorderStyle="Ridge" Font-Names="Comfortaa" ForeColor="White"></asp:TextBox>
                    </div>
                    <div style="display: flex; justify-content: space-around;" class="input-flex">
                        <p class="auto-style2">Email</p>
                        <asp:TextBox class="Input_Size" ID="TextBox5" runat="server" BackColor="#282B2D" BorderColor="White" BorderStyle="Ridge" Font-Names="Comfortaa" ForeColor="White"></asp:TextBox>
                    </div>
                    <div style="display: flex; justify-content: space-around;" class="input-flex">
                        <p class="auto-style2">Number</p>
                        <asp:TextBox class="Input_Size" ID="TextBox6" runat="server" BackColor="#282B2D" BorderColor="White" BorderStyle="Ridge" Font-Names="Comfortaa" ForeColor="White"></asp:TextBox>
                    </div>
                </div>
                <div class="d-flex p-2 justify-content-center">
                    <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Register" OnClick="Registration_Click" />
                </div>
                <span class="auto-style2">Have an account already? Click
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Login.aspx" ForeColor="White">here</asp:HyperLink> to login</span>
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
    var config = {
        apiKey: "AIzaSyArcbqxkogFHes_uI7qcuaUKB05z4h1FMg",
        authDomain: "living-hope-church.firebaseapp.com",
        databaseURL: "https://living-hope-church.firebaseio.com",
        projectId: "living-hope-church",
        storageBucket: "living-hope-church.appspot.com",
        messagingSenderId: "681780389424"
    };
    firebase.initializeApp(config);
    var db = firebase.firestore();
    var user = document.getElementById("TextBox1").value;
    var docRef = db.collection("User").doc(user);
    docRef.get().then(function (doc) {
        if (doc.exists) {
            document.getElementById("Label1").value = "Username already exists! Try another one.";
            document.getElementById("TextBox1").value = null;
        }
    });
</script>