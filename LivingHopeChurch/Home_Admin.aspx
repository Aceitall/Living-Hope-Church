<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home_Admin.aspx.cs" Inherits="LivingHopeChurch.Home_Admin" %>

<!DOCTYPE html>

<meta name="viewport" content="width=device-width, initial-scale=1">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <link rel ="icon" href="favicon.ico" type="image/x-icon"/>
    <title>Home</title><style>
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
                <a href="Directory_Admin.aspx">Directory</a>
                <a href="Offering_Admin.aspx">Offering</a>
                <a href="Profile_Admin.aspx">Profile</a>
            </div>
            <div class="d-flex flex-row justify-content-start">
                <div class="p" style="padding-left: 10px">
                    <span style="color: white; font-size: 30px; cursor: pointer" onclick="Click()">&#9776;</span>
                </div>
                <div class="p" style="padding: 11px 0px 0px 10px">
                    <a href="#" class="Home" style="text-decoration: none">Living Hope Church</a>
                </div>
                <div class="ml-auto p-2">
                    <button type="button" onclick="Logout()" class="btn btn-light">Logout</button>
                </div>
                <div class="p-1"></div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script>
        var type = localStorage.Type;
        if (false) {
            if (type == "")
                location.replace("http://localhost:50455/Registration.aspx");
            else if (type == "Member")
                location.replace("http://localhost:50455/Ministry.aspx");
            else if (type == "Guest")
                location.replace("http://localhost:50455/Ministry_Guest.aspx");
        }
    </script>
</body>
</html>