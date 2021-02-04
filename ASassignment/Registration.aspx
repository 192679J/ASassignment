<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ASassignment.Registeration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 159px;
        }
        .auto-style2 {
            width: 212px;
        }
    </style>
    <script type="text/javascript">
        function validate() {
            var str = document.getElementById('<%=tbPassword.ClientID %>').value;

            if (str.length < 8) {
                document.getElementById("lbPassword").innerHTML = "Password Length Must be at Least 8 Characters";
                document.getElementById("lbPassword").style.color = "Red";
                return ("too_short")
            }

            else if (str.search(/[0-9]/) == -1) {
                document.getElementById("lbPassword").innerHTML = "Password require at least 1 Number";
                document.getElementById("lbPassword").style.color = "Red";
                return ("no_number")
            }

            else if (str.search(/[A-Z]/) == -1) {
                document.getElementById("lbPassword").innerHTML = "Password require at least 1 Uppercase Character";
                document.getElementById("lbPassword").style.color = "Red";
                return ("no_upper")
            }

            else if (str.search(/[a-z]/) == -1) {
                document.getElementById("lbPassword").innerHTML = "Password require at least 1 Lowercase Character";
                document.getElementById("lbPassword").style.color = "Red";
                return ("no_lower")
            }

            else if (str.search(/[^A-Za-z0-9]/) == -1) {
                document.getElementById("lbPassword").innerHTML = "Password require at least 1 Special Character";
                document.getElementById("lbPassword").style.color = "Red";
                return ("no_special")
            }

            document.getElementById("lbPassword").innerHTML = "Excellent!";
            document.getElementById("lbPassword").style.color = "Blue";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Registeration Form</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">First Name :</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="tbFirstName" runat="server" Width="197px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lbFirstName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Last Name :</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="tbLastName" runat="server" Width="197px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lbLastName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Credit Card :</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="tbCredit" runat="server" Width="197px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lbCredit" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Email :</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="tbEmail" runat="server" Width="197px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lbEmail" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Password</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="tbPassword" runat="server" Width="197px" onkeyup="javascript:validate()" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lbPassword" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Date of Birth</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="tbDOB" runat="server" Width="197px" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lbDOB" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lbSuccess" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
