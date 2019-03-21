<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="LivingHopeChurch.Profile" %>

<!DOCTYPE html>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <title>Profile</title>
    <style>
        .sidenav {
            height: auto;
            width: 0;
            position: absolute;
            overflow-x: hidden;
            top: 30px;
            left: 0;
            transition: 0.1s;
            padding-top: 15px;
        }

            .sidenav a {
                padding: 4px 4px 4px 30px;
                text-decoration: none;
                font-size: 20px;
                color: #282B2D;
                display: block;
                transition: 0.1s;
            }

                .sidenav a:hover {
                    color: dimgrey;
                }

        .Home {
            font-size: large;
            font-family: Comfortaa;
            color: #282B2D;
            display: block;
            transition: 0.1s;
        }
        a:hover{
            color: #282B2D;
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
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="SideBar" class="sidenav">
            <a href="Ministry.aspx">Ministry</a>
            <a href="Sermon.aspx">Services</a>
            <a href="Directory.aspx">Directory</a>
            <a href="Offering.aspx">Offering</a>
            <a href="#">Profile</a>
        </div>
        <div class="d-flex flex-row justify-content-start">
            <div class="p" style="padding-left: 10px">
                <span style="font-size: 30px; cursor: pointer" onclick="Click()">&#9776;</span>
            </div>
            <div class="p" style="padding: 11px 0px 0px 10px">
                <a href="Home.aspx" class="Home" style="text-decoration:none">Living Hope Church</a>
            </div>
            <div class="p-2"></div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
