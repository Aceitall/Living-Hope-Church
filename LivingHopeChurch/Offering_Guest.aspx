<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Offering_Guest.aspx.cs" Inherits="LivingHopeChurch.Offering_Guest" %>

<!DOCTYPE html>

<meta name="viewport" content="width=device-width, initial-scale=1">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <title>Offering</title>
    <style>
        body {
            background-color: #282B2D;
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
            display: block;
            transition: 0.1s;
        }

        a:hover {
            color: lightgrey;
        }

        @media screen and (max-height: 450px) {
            .sidenav {
                padding-top: 15px;
            }

                .sidenav a {
                    font-size: 18px;
                }
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
        function SignUp() {
            location.replace("http://localhost:50455/Registration.aspx");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="SideBar" class="sidenav">
            <a href="Ministry_Guest.aspx">Ministry</a>
            <a href="Sermon_Guest.aspx">Sermons</a>
            <a href="#">Offering</a>
        </div>
        <div class="d-flex flex-row justify-content-start">
            <div class="p" style="padding-left: 10px">
                <span style="color: white; font-size: 30px; cursor: pointer" onclick="Click()">&#9776;</span>
            </div>
            <div class="p" style="padding: 10px 0px 0px 10px">
                <a href="Home_Guest.aspx" class="Home" style="text-decoration: none">Living Hope Church</a>
            </div>
            <div class="ml-auto p-2">
                <button type="button" onclick="SignUp()" class="btn btn-light">Sign up</button>
            </div>
            <div class="p-1"></div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script>
        var type = localStorage.Type;
        if (type == "Member")
            location.replace("http://localhost:50455/Offering.aspx");
        else if (type == "Admin")
            location.replace("http://localhost:50455/Offering_Admin.aspx");
    </script>
</body>
</html>
