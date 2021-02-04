<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="ASassignment.Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbMessage" runat="server"></asp:Label>
        </div>
        <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="LogoutMe" />
    </form>
</body>
</html>
