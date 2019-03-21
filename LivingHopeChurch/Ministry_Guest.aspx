<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ministry_Guest.aspx.cs" Inherits="LivingHopeChurch.Ministry_Guest"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel ="icon" href="favicon.ico" type="image/x-icon"/>
    <title>Ministry</title>
</head>
<body id="color">
    <form id="form1" runat="server">
        <div style="height: 100%">
            <div style="float:right; margin-right:1%" id="content">
            <script>
                var el = document.getElementById('content');
                var e1 = document.getElementById('color');
                var content;
                if (0) {
                    content = '<asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Home.png" ImageHeight="20px" NavigateUrl="~/Home_Guest.aspx"></asp:HyperLink>&emsp;<asp:HyperLink ID="HyperLink2" runat="server" ImageHeight="20px" ImageUrl="~/Ministry.png" NavigateUrl="~/Ministry_Guest.aspx"></asp:HyperLink>&emsp;<asp:HyperLink ID="HyperLink3" runat="server" ImageHeight="20px" ImageUrl="~/Sermon.png" NavigateUrl="~/Sermon_Guest.aspx"></asp:HyperLink>&emsp;<asp:HyperLink ID="HyperLink4" runat="server" ImageHeight="20px" ImageUrl="~/Offering.png" NavigateUrl="~/Offering_Guest.aspx"></asp:HyperLink>';
                    e1.style.backgroundColor = "#ffffff";
                }
                else {
                    content = '<asp:HyperLink ID="HyperLink5" runat="server" ImageUrl="~/Home_Dark.png" ImageHeight="20px" NavigateUrl="~/Home_Guest.aspx"></asp:HyperLink>&emsp;<asp:HyperLink ID="HyperLink6" runat="server" ImageHeight="20px" ImageUrl="~/Ministry_Dark.png" NavigateUrl="~/Ministry_Guest.aspx"></asp:HyperLink>&emsp;<asp:HyperLink ID="HyperLink7" runat="server" ImageHeight="20px" ImageUrl="~/Sermon_Dark.png" NavigateUrl="~/Sermon_Guest.aspx"></asp:HyperLink>&emsp;<asp:HyperLink ID="HyperLink8" runat="server" ImageHeight="20px" ImageUrl="~/Offering_Dark.png" NavigateUrl="~/Offering_Guest.aspx"></asp:HyperLink>';
                    e1.style.backgroundColor = "#282727";
                }
                el.insertAdjacentHTML('afterbegin', content);
            </script>
            </div>
          </div>
    </form>
</body>
</html>
