<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sermon.aspx.cs" Inherits="LivingHopeChurch.Sermon" %>

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

        .Player {
            padding-top: 10px;
        }

        @media screen and (max-width: 420px) {
            .sidenav {
                padding-top: 15px;
            }

                .sidenav a {
                    font-size: 18px;
                }
                #loader{
                    left:43%;
                    top:40%;
                }
        }
    </style>
    <script>
        function Click() {
            if (window.innerWidth <= 420) {
                if (document.getElementById("SideBar").style.width == "120px") {
                    document.getElementById("SideBar").style.width = "0";
                    document.getElementById("cp_widget_24fea73c-3c3d-4a14-b57e-3e41301629ad").style.paddingTop = "0px";
                }
                else {
                    document.getElementById("SideBar").style.width = "120px";
                    document.getElementById("cp_widget_24fea73c-3c3d-4a14-b57e-3e41301629ad").style.paddingTop = "200px";
                }
            }
            else {
                if (document.getElementById("SideBar").style.width == "120px") {
                    document.getElementById("SideBar").style.width = "0";
                    document.getElementById("cp_widget_24fea73c-3c3d-4a14-b57e-3e41301629ad").style.paddingLeft = "0px";
                }
                else {
                    document.getElementById("SideBar").style.width = "120px";
                    document.getElementById("cp_widget_24fea73c-3c3d-4a14-b57e-3e41301629ad").style.paddingLeft = "150px";
                }
            }
        }
    </script>
</head>
<body onload="myFunction()">
    <form id="form1" runat="server">
        <div style="width: 100%; height: 100%">

            <div id="SideBar" class="sidenav">
                <a href="Ministry.aspx">Ministry</a>
                <a href="#">Sermons</a>
                <a href="Directory.aspx">Directory</a>
                <a href="Offering.aspx">Offering</a>
                <a href="Profile.aspx">Profile</a>
            </div>
            <div class="d-flex flex-row justify-content-start">
                <div class="p" style="padding-left: 10px">
                    <span style="color: white; font-size: 30px; cursor: pointer" onclick="Click()">&#9776;</span>
                </div>
                <div class="p" style="padding: 11px 0px 0px 10px">
                    <a href="Home.aspx" class="Home" style="text-decoration: none">Living Hope Church</a>
                </div>
                <div class="p-2"></div>
            </div>
        </div>
        <div id="Player">
            <div id="cp_widget_24fea73c-3c3d-4a14-b57e-3e41301629ad" style="display: none;"></div>
            <div id="loader">
                <div class="loader2">
                    <div class="loader3">
                    </div>
                </div>
            </div>
            <script type="text/javascript">
                var cpo = []; cpo["_object"] = "cp_widget_24fea73c-3c3d-4a14-b57e-3e41301629ad"; cpo["_fid"] = "A8KA-dOFPcub";
                var _cpmp = _cpmp || []; _cpmp.push(cpo);
                (function () {
                    var cp = document.createElement("script"); cp.type = "text/javascript";
                    cp.async = true; cp.src = "//www.cincopa.com/media-platform/runtime/libasync.js";
                    var c = document.getElementsByTagName("script")[0];
                    c.parentNode.insertBefore(cp, c);
                })(); </script>
        </div>
    </form>
    <script>
        var myVar;
        function myFunction() {
            myVar = setTimeout(showPage, 3000);
        }
        function showPage() {
            document.getElementById("loader").style.display = "none";
            document.getElementById("cp_widget_24fea73c-3c3d-4a14-b57e-3e41301629ad").style.display = "block";
        }
    </script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
