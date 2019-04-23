<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ministry_Guest.aspx.cs" Inherits="LivingHopeChurch.Ministry_Guest"%>

<!DOCTYPE html>

<meta name="viewport" content="width=device-width, initial-scale=1">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <link rel ="icon" href="favicon.ico" type="image/x-icon"/>
    <title>Ministry</title>
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
                padding-bottom:5px;
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
        .Title {
            font-size: xx-large;
            font-family: Comfortaa;
            color: white;
        }
        .Text{
            font-size: large;
            font-family: Comfortaa;
            color: black;
            text-align:justify;
        }
        .TextBig{
            font-size: x-large;
            font-family: Comfortaa;
            color: black;
            text-align:center;
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
            <a href="#">Ministry</a>
            <a href="Sermon_Guest.aspx">Sermons</a>
            <a href="Offering_Guest.aspx">Offering</a>
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
        <div class="d-flex p-4 justify-content-center">
            <div>
                <div id="Title">
                    <p class="Title">Ministries</p>
                </div>
            </div>
        </div>
        <div class="d-flex" style="background-color:limegreen;margin:15px;border:2px solid white; border-radius: 5px; padding: 2px">
            <div>
                <div class="d-flex p-4">
                    <div style="border: 2px solid white; border-radius: 5px;">
                        <asp:Image class="Img" ID="Image1" runat="server" Height="300px" ImageUrl="~/Life Group.jpg" />
                    </div>
                </div>
            </div>
            <div class="p-3"></div>
            <div style="padding-top:10px;">
                <div class="p-5 justify-content-center">
                    <p class="TextBig">Life Groups</p>
                    <p class="Text">We believe God created us to live in relationship with others - that’s why Life Groups exist. It's the perfect place to connect with others as you grow deeper in your relationship with God. Together, we learn, share life, and serve others.</p>
                </div>
            </div>
        </div>
        <div class="d-flex" style="background-color:cornflowerblue;margin:15px;border:2px solid white; border-radius: 5px; padding: 2px">
            <div style="padding-top:10px;">
                <div class="p-5 justify-content-center">
                    <p class="TextBig">Kids for Christ</p>
                    <p class="Text">Children between the ages of Three to Six are in the perfect place to learn and be taught the word of God. We use a lot of activities and memory verses to help the child learn about God and how He wants to have a relationship with us.</p>
                </div>
            </div>
            <div class="p-3"></div>
            <div>
                <div class="d-flex p-4">
                    <div style="border: 2px solid white; border-radius: 5px;">
                        <asp:Image class="Img" ID="Image5" runat="server" Height="300px" ImageUrl="~/Kids for Christ.jpg" />
                    </div>
                </div>
            </div>
        </div>
        <div class="d-flex" style="background-color:limegreen;margin:15px;border:2px solid white; border-radius: 5px; padding: 2px">
            <div>
                <div class="d-flex p-4">
                    <div style="border: 2px solid white; border-radius: 5px;">
                        <asp:Image class="Img" ID="Image2" runat="server" Height="300px" ImageUrl="~/Explorer's Club.jpg" />
                    </div>
                </div>
            </div>
            <div class="p-3"></div>
            <div style="padding-top:10px;">
                <div class="p-5 justify-content-center">
                    <p class="TextBig">Explorer's Club</p>
                    <p class="Text">Children between the ages of Seven to Twelve need to be taught in a specific way. We make sure that the material that is being taught is relevant and also easy for the children to pick up. We want to help your kid grow in spirit and in the word.</p>
                </div>
            </div>
        </div>
        <div class="d-flex" style="background-color:cornflowerblue;margin:15px;border:2px solid white; border-radius: 5px; padding: 2px">
            <div style="padding-top:10px;">
                <div class="p-5 justify-content-center">
                    <p class="TextBig">Teens</p>
                    <p class="Text">There are a lot of changes that happen when a person is between the ages of Thirteen to Seventeen. These changes both emotionally and physically need to be dealt with and addressed carefully so that the child can grow and does not stray down the wrong path.</p>
                </div>
            </div>
            <div class="p-3"></div>
            <div>
                <div class="d-flex p-4">
                    <div style="border: 2px solid white; border-radius: 5px;">
                        <asp:Image class="Img" ID="Image6" runat="server" Height="300px" ImageUrl="~/Teens.jpg" />
                    </div>
                </div>
            </div>
        </div>
        <div class="d-flex" style="background-color:limegreen;margin:15px;border:2px solid white; border-radius: 5px; padding: 2px">
            <div>
                <div class="d-flex p-4">
                    <div style="border: 2px solid white; border-radius: 5px;">
                        <asp:Image class="Img" ID="Image3" runat="server" Height="300px" ImageUrl="~/Young Adult.jpg" />
                    </div>
                </div>
            </div>
            <div class="p-3"></div>
            <div style="padding-top:10px;">
                <div class="p-5 justify-content-center">
                    <p class="TextBig">Young Adults</p>
                    <p class="Text">Young Adults are the age where they are out of college and currently working. They are also single and need help in building sound and solid relationships. We want to help to cater to this group by mentoring them and helping them understand that God has a plan for their lives.</p>
                </div>
            </div>
        </div>
        <div class="d-flex" style="background-color:cornflowerblue;margin:15px;border:2px solid white; border-radius: 5px; padding: 2px">
            <div style="padding-top:10px;">
                <div class="p-5 justify-content-center">
                    <p class="TextBig">Word</p>
                    <p class="Text">We have dedicated preachers and pastors from across different churches who come to help us learn the word of God on a Sunday morning. The sermons are based on the Bible and help us grow in our faith. We also record the sermons so that people can listen to them later at their own descretion.</p>
                </div>
            </div>
            <div class="p-3"></div>
            <div>
                <div class="d-flex p-4">
                    <div style="border: 2px solid white; border-radius: 5px;">
                        <asp:Image class="Img" ID="Image7" runat="server" Height="300px" ImageUrl="~/Word.jpg" />
                    </div>
                </div>
            </div>
        </div>
        <div class="d-flex" style="background-color:limegreen;margin:15px;border:2px solid white; border-radius: 5px; padding: 2px">
            <div>
                <div class="d-flex p-4">
                    <div style="border: 2px solid white; border-radius: 5px;">
                        <asp:Image class="Img" ID="Image4" runat="server" Height="300px" ImageUrl="~/Worship.jpg" />
                    </div>
                </div>
            </div>
            <div class="p-3"></div>
            <div style="padding-top:10px;">
                <div class="p-5 justify-content-center">
                    <p class="TextBig">Worship</p>
                    <p class="Text">Worship is a key aspect of your walk with God. We want everyone who participates in our Church to be worshipping in Spirit and in truth. We have a group of dedicated musicians and leaders who lead us into the presence of God. Every Sunday is different and you can encounter God afresh each time.</p>
                </div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script>
        var type = localStorage.Type;
        if (type == "Member")
            location.replace("http://localhost:50455/Ministry.aspx");
        else if (type == "Admin")
            location.replace("http://localhost:50455/Ministry_Admin.aspx");
    </script>
</body>
</html>
