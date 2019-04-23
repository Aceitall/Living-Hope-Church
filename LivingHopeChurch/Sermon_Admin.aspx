<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sermon_Admin.aspx.cs" Inherits="LivingHopeChurch.Sermon_Admin" %>

<!DOCTYPE html>

<meta name="viewport" content="width=device-width, initial-scale=1">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <title>Sermons</title>
    <style>
        #loader {
            position: absolute;
            left: 48%;
            top: 45%;
            border: 4px solid #282B2D;
            border-radius: 50%;
            border-top: 4px solid white;
            width: 50px;
            height: 50px;
            animation: spin 3s linear infinite;
        }

        .loader2 {
            border: 3px solid #282B2D;
            border-radius: 50%;
            border-top: 3px solid white;
            width: 35px;
            height: 35px;
            animation: spin 2s linear infinite;
            margin: 5px;
        }

        .loader3 {
            border: 2px solid #282B2D;
            border-radius: 50%;
            border-top: 2px solid white;
            width: 20px;
            height: 20px;
            animation: spin 2s linear infinite;
            margin: 6px;
        }

        @keyframes spin {
            0% {
                transform: rotate(0deg);
            }

            100% {
                transform: rotate(360deg);
            }
        }

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
        }

        .auto-style2 {
            font-family: Comfortaa;
            font-size: large;
            color: white;
            line-height: 25px;
        }

        .Title {
            font-size: xx-large;
            font-family: Comfortaa;
            color: white;
        }

        .Input_Size {
            height: 40px;
            width: 300px;
        }

        .Text {
            font-size: large;
            font-family: Comfortaa;
            color: white;
        }

        a:hover {
            color: lightgrey;
        }

        .Player {
            padding-top: 10px;
            position: relative;
            width: auto;
        }

        @media screen and (max-width: 420px) {
            .sidenav {
                padding-top: 15px;
            }

                .sidenav a {
                    font-size: 18px;
                }
        }

        hr {
            border-top: 2px dashed white;
        }

        body {
            background-color: #282B2D;
        }
    </style>
    <script>
        function Click() {
            if (window.innerWidth <= 360) {
                if (document.getElementById("SideBar").style.width == "110px") {
                    document.getElementById("SideBar").style.width = "0px";
                    document.getElementById("Title").style.paddingLeft = "0px";
                }
                else {
                    document.getElementById("SideBar").style.width = "110px";
                    document.getElementById("Title").style.paddingLeft = "100px";
                }
            }
            else {
                if (document.getElementById("SideBar").style.width == "120px") {
                    document.getElementById("SideBar").style.width = "0px";
                }
                else {
                    document.getElementById("SideBar").style.width = "120px";
                }
            }
        }
        function Open() {
            document.getElementById("Upload").style.display = "block";
        }
        var myVar;
        function myFunction() {
            myVar = setTimeout(showPage, 5000);
        }
        function showPage() {
            document.getElementById("loader").style.display = "none";
            document.getElementById("Playlist").style.display = "block";
        }
        function Close() {
            document.getElementById("Upload").style.display = "none";
        }
        function Logout() {
            localStorage.User = "";
            localStorage.Type = "";
            localStorage.Key = "";
            location.replace("http://localhost:50455/Login.aspx");
        }
    </script>
</head>
<body onload="myFunction()">
    <form id="form1" runat="server">
        <div style="width: 100%; height: 100%">
            <div id="SideBar" class="sidenav">
                <a href="Ministry_Admin.aspx">Ministry</a>
                <a href="#">Sermons</a>
                <a href="Directory_Admin.aspx">Directory</a>
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
                        <p class="Title">Sermons</p>
                    </div>
                    <div>
                        <button type="button" onclick="Open()" class="btn btn-success">Add new Sermon</button>
                    </div>
                </div>
            </div>
            <div id="Upload" style="display: none">
                <div class="d-flex justify-content-end" style="padding-right: 10px">
                    <span style="color: white; font-size: 20px; cursor: pointer" onclick="Close()">&#x2715;</span>
                </div>
                <div class="d-flex justify-content-center">
                    <div>
                        <div class="d-flex" style="height: 40px">
                            <p class="Text">Name of Sermon</p>
                        </div>
                        <div class="p-2"></div>
                        <div class="d-flex" style="height: 40px">
                            <p class="Text">Embeded code</p>
                        </div>
                    </div>
                    <div class="p-5"></div>
                    <div>
                        <div class="d-flex">
                            <asp:TextBox class="Input_Size" ID="Name" runat="server" BackColor="#282B2D" BorderColor="White" BorderStyle="Ridge" Font-Names="Comfortaa" ForeColor="White"></asp:TextBox>
                        </div>
                        <div class="p-2"></div>
                        <div class="d-flex">
                            <asp:TextBox class="Input_Size" ID="Link" runat="server" BackColor="#282B2D" BorderColor="White" BorderStyle="Ridge" Font-Names="Comfortaa" ForeColor="White"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="p-2"></div>
                <div class="d-flex justify-content-center">
                    <button type="button" onclick="Upload()" class="btn btn-light">Upload</button>
                </div>
                <div class="p-1"></div>
                <hr />
            </div>
            <div id="loader">
                <div class="loader2">
                    <div class="loader3">
                    </div>
                </div>
            </div>
            <div class="p-2"></div>
            <div id="Playlist" style="display: none">
                <div class="d-flex justify-content-center">
                    <div id="Description">
                    </div>
                    <div class="p-5"></div>
                    <div id="Audio">
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://www.gstatic.com/firebasejs/5.8.2/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/5.8.2/firebase-firestore.js"></script>
    <script>
        firebase.initializeApp({
            apiKey: "AIzaSyArcbqxkogFHes_uI7qcuaUKB05z4h1FMg",
            authDomain: "living-hope-church.firebaseapp.com",
            projectId: "living-hope-church"
        });
        var db = firebase.firestore();
        var type = localStorage.Type;
        if (false) {
            if (type == "")
                location.replace("http://localhost:50455/Registration.aspx");
            else if (type == "Member")
                location.replace("http://localhost:50455/Sermon.aspx");
            else if (type == "Guest")
                location.replace("http://localhost:50455/Sermon_Guest.aspx");
        }
        var node1 = document.getElementById("Description");
        var node2 = document.getElementById("Audio");
        var name, code;
        db.collection("Sermon").get().then(function (querySnapshot) {
            querySnapshot.forEach(function (doc) {
                const userdata = doc.data();
                name = userdata.Sermon_Name;
                code = userdata.Embeded_Code;
                node1.innerHTML += "<div class='d-flex' style='height: 102px'><p class='Text'>" + name + "</p></div><div class='p-2'></div>";
                node2.innerHTML += "<div class='d-flex'>" + code + "</div></div><div class='p-2'></div>";
            });
        });
        function Upload() {
            var name = document.getElementById("Name").value;
            var code = document.getElementById("Link").value;
            if ((name === "") || code === "") {
                alert("You cannot upload a sermon without providing proper details");
            }
            else {
                db.collection("Sermon").doc().set({
                    Sermon_Name: name,
                    Embeded_Code: code
                });
                alert("Successfully uploaded");
                document.getElementById("Name").value = "";
                document.getElementById("Link").value = "";
                location.reload(true);
            }
        }
    </script>
</body>
</html>
