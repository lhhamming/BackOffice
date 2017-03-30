<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reken.aspx.cs" Inherits="Reken" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       <%-- Dit is voor de tabellen --%>

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 108px;
        }
        .auto-style4 {
            width: 85px;
        }
        .auto-style5 {
            width: 120px;
        }
        .auto-style6 {
            width: 677px;
        }
        .auto-style7 {
            width: 91px;
        }
        .auto-style9 {
            width: 50px;
        }

        .auto-style10 {
            width: 108px;
            height: 26px;
        }
        .auto-style11 {
            width: 50px;
            height: 26px;
        }
        .auto-style12 {
            width: 1px;
            height: 26px;
            text-align: center;
        }
        .auto-style13 {
            width: 85px;
            height: 26px;
        }
        .auto-style14 {
            width: 91px;
            height: 26px;
        }
        .auto-style15 {
            width: 120px;
            height: 26px;
        }
        .auto-style16 {
            width: 677px;
            height: 26px;
        }
        .auto-style17 {
            width: 1px;
            text-align: center;
            margin-left: 40px;
        }

    </style>
</head>
<body>

    <form id="form1" runat="server">
        
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Getal1
        </td>
                <td class="auto-style9">
        <asp:TextBox ID="txtGetal1" runat="server" Width="175px"></asp:TextBox>
                </td>
                <td class="auto-style17">
        <asp:Label ID="sterGetal1" runat="server" Text="*" style="text-align: center"></asp:Label>
                </td>
                <td class="auto-style4">
        <asp:Button ID="btnOptel" runat="server" OnClick="btnOptel_Click" Text="Optrellen" CausesValidation="true" Width="72px" />
                </td>
                <td class="auto-style7">
        <asp:RequiredFieldValidator ID="rfvGetal1" runat="server" ControlToValidate="txtGetal1" ErrorMessage="Vul getal 1 in!" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5">
        <asp:RangeValidator ID="rvGetal1" runat="server" ControlToValidate="txtGetal1" ErrorMessage="Tussen de 1 en 100" MaximumValue="100" MinimumValue="1" Display="Dynamic" Type="Double"></asp:RangeValidator>
                </td>
                <td class="auto-style6">
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtGetal1" ControlToValidate="txtGetal2" Display="Dynamic" ErrorMessage="Getal 2 moet het zelfde zijn als Getal 1"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Getal 2</td>
                <td class="auto-style9"><asp:TextBox ID="txtGetal2" runat="server" Width="175px"></asp:TextBox>
                </td>
                <td class="auto-style17">
        <asp:Label ID="sterGetal2" runat="server" Text="*"></asp:Label>
                </td>
                <td class="auto-style4">
        <asp:Button ID="btnAftrek" runat="server" OnClick="btnAftrek_Click" Text="Aftrekken"  />
                </td>
                <td class="auto-style7">
        <asp:RequiredFieldValidator ID="rfvGetal2" runat="server" ControlToValidate="txtGetal2" ErrorMessage="Vul getal 2 in!" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">Uitkomst</td>
                <td class="auto-style11"><asp:TextBox ID="txtUitkomst" runat="server" Width="175px"></asp:TextBox>
                </td>
                <td class="auto-style12"></td>
                <td class="auto-style13"></td>
                <td class="auto-style14"></td>
                <td class="auto-style15"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:Label ID="Label1" runat="server" Text="Telefoon nummer"></asp:Label>
                </td>
                <td class="auto-style9">
        <asp:TextBox ID="txtTelefoon" runat="server" Width="175px"></asp:TextBox>
                </td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style4">
        <asp:RegularExpressionValidator ID="revTelefoon" runat="server" ControlToValidate="txtTelefoon" Display="Dynamic" ErrorMessage="Incorrect telefoon nummer" ValidationExpression="\d{3}\s\d{7}"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
        </table>
    </form>

</body>
</html>
