<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASassignment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://www.google.com/recaptcha/api.js?render="></script>
    <style type="text/css">
        .auto-style1 {
            width: 79px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Login</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Email</td>
                <td>
                    <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Password</td>
                <td>
                    <asp:TextBox ID="tbPassword" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                    <asp:Label ID="errorMsg" runat="server"></asp:Label>
                    <asp:Label ID="lbGscore" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response"/>        <script>
            grecaptcha.ready(function () {
                grecaptcha.execute('', { action: 'Login' }).then(function (token) {
                document.getElementById("g-recaptcha-response").value = token;
                });
             });
        </script>
    </form>
</body>
</html>
