<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ministry.aspx.cs" Inherits="LivingHopeChurch.Ministry"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel ="icon" href="favicon.ico" type="image/x-icon"/>
    <title>Ministry</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 100%">
            <div style="float:right; margin-right:1%">
                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Home.png" ImageHeight="20px" NavigateUrl="~/Home.aspx"></asp:HyperLink>
                &emsp;<asp:HyperLink ID="HyperLink2" runat="server" ImageHeight="20px" ImageUrl="~/Ministry.png" NavigateUrl="~/Ministry.aspx"></asp:HyperLink>
                &emsp;<asp:HyperLink ID="HyperLink3" runat="server" ImageHeight="20px" ImageUrl="~/Sermon.png" NavigateUrl="~/Sermon.aspx"></asp:HyperLink>
                &emsp;<asp:HyperLink ID="HyperLink4" runat="server" ImageHeight="20px" ImageUrl="~/Directory.png" NavigateUrl="~/Directory.aspx"></asp:HyperLink>
                &emsp;<asp:HyperLink ID="HyperLink5" runat="server" ImageHeight="20px" ImageUrl="~/Offering.png" NavigateUrl="~/Offering.aspx"></asp:HyperLink>
                &emsp;<asp:HyperLink ID="HyperLink6" runat="server" ImageHeight="20px" ImageUrl="~/Profile.png" NavigateUrl="~/Profile.aspx"></asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>
