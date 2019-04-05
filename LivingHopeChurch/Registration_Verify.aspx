<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration_Verify.aspx.cs" Inherits="LivingHopeChurch.Registration_Verify" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Encryption.js"></script>
    <title>Registration</title>
</head>
<body style="background-color: #282B2D">
    <form id="form1" runat="server">
        <div style="text-align:center">
            <br /><asp:Label ID="Label2" runat="server" Font-Names="Comfortaa" ForeColor="White" Font-Size="X-Large"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Names="Comfortaa" ForeColor="White"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Names="Comfortaa" ForeColor="White">You will be automatically redirected in 3 seconds.</asp:Label>
            <asp:HiddenField ID="HiddenField1" runat="server" />
        </div>
    </form>
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
    var user = '<%= Session["User"] %>';
    var pass = '<%= Session["Pass"] %>';
    var first = '<%= Session["First"] %>';
    var last = '<%= Session["Last"] %>';
    var email = '<%= Session["Email"] %>';
    var number = '<%= Session["Number"] %>';
    var flag = document.getElementById("HiddenField1").value;
    var docRef = db.collection("User").doc(user);
    docRef.get().then(function (doc) {
        if (doc.exists) {
        }
        else {
            if (flag === "T") {
                db.collection("User").doc(user).set({
                    Username: user,
                    Encrypt: key(),
                    Password: pass,
                    First_Name: first,
                    Last_Name: last,
                    Email: email,
                    Number: number,
                    Usertype: "Guest"
                });
            }
        }
    });
    <% Session.Clear();%>
</script>