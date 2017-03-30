<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reken.aspx.cs" Inherits="Reken" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 19%;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
        }
        .auto-style4 {
            width: 46px;
        }
        .auto-style5 {
            width: 43px;
        }
        .auto-style6 {
            width: 47px;
        }
        .auto-style7 {
            width: 50px;
        }
        .auto-style8 {
            width: 262px;
        }
        .auto-style9 {
            font-size: large;
            font-weight: bold;
            background-color: #3399FF;
        }
        .auto-style10 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="auto-style10">
        
        <br />
        <asp:Label ID="Label1" runat="server" Text="De Rekenmachine van Leon en Luuk"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Hieronder staat een grafische rekenmachine. Druk op de knoppen om deze te gebruiken."></asp:Label>
            <br />
            <br />
        <br />
        <asp:Label ID="lGetal1" runat="server"></asp:Label>
        <asp:Label ID="lBereken" runat="server"></asp:Label>
            <asp:Label ID="lGetal2" runat="server"></asp:Label>
        <br />
        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style8">
                    <asp:TextBox ID="txtScherm" runat="server" Height="86px" Width="345px" style="text-align: center; font-size: xx-large" Font-Strikeout="False" ></asp:TextBox>
                    <br />
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style5">
                                <asp:Button ID="btn7_Click" runat="server" Height="48px" OnClick="btn7_Click_Click" Text="7" Width="66px" CssClass="auto-style9" style="margin-left: 0px" />
                            </td>
                            <td class="auto-style4">
                                <asp:Button ID="btn8_Click" runat="server" Height="48px" OnClick="btn8_Click_Click" Text="8" Width="66px" CssClass="auto-style9" />
                            </td>
                            <td class="auto-style6">
                                <asp:Button ID="btn9_Click" runat="server" Height="48px" OnClick="btn9_Click_Click" Text="9" Width="66px" CssClass="auto-style9" />
                            </td>
                            <td class="auto-style7">
                                <asp:Button ID="btnC_Click" runat="server" Height="48px" OnClick="btnC_Click_Click" Text="C" Width="66px" CssClass="auto-style9" />
                            </td>
                            <td>
                                <asp:Button ID="btnBack_Click" runat="server" Height="48px" OnClick="btnBack_Click_Click" Text="Back" Width="66px" CssClass="auto-style9" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Button ID="btn4_Click" runat="server" Height="48px" OnClick="btn4_Click_Click" Text="4" Width="66px" CssClass="auto-style9" />
                            </td>
                            <td class="auto-style4">
                                <asp:Button ID="btn5_Click" runat="server" Height="48px" OnClick="btn5_Click_Click" Text="5" Width="66px" CssClass="auto-style9" />
                            </td>
                            <td class="auto-style6">
                                <asp:Button ID="btn6_Click" runat="server" Height="48px" OnClick="btn6_Click_Click" Text="6" Width="66px" CssClass="auto-style9" />
                            </td>
                            <td class="auto-style7">
                                <asp:Button ID="btnPlus_Click" runat="server" Height="48px" OnClick="btnPlus_Click_Click" Text="+" Width="66px" CssClass="auto-style9" />
                            </td>
                            <td>
                                <asp:Button ID="btnM2_Click" runat="server" Height="48px" Text="M2" Width="66px" CssClass="auto-style9" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Button ID="btn1_Click" runat="server" Height="48px" OnClick="btn1_Click_Click" Text="1" Width="66px" CssClass="auto-style9" />
                            </td>
                            <td class="auto-style4">
                                <asp:Button ID="btn2_Click" runat="server" Height="48px" OnClick="btn2_Click_Click" Text="2" Width="66px" CssClass="auto-style9" />
                            </td>
                            <td class="auto-style6">
                                <asp:Button ID="btn3_Click" runat="server" Height="48px" OnClick="btn3_Click_Click" Text="3" Width="66px" CssClass="auto-style9" />
                            </td>
                            <td class="auto-style7">
                                <asp:Button ID="btnMin_Click" runat="server" Height="48px" OnClick="btnMin_Click_Click" Text="-" Width="66px" CssClass="auto-style9" />
                            </td>
                            <td>
                                <asp:Button ID="btn01_Click" runat="server" Height="48px" Text="O1" Width="66px" CssClass="auto-style9" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3" colspan="2">
                                <asp:Button ID="btn0_Click" runat="server" Height="48px" OnClick="Button22_Click" Text="0" Width="134px" CssClass="auto-style9" />
                            </td>
                            <td class="auto-style6">
                                <asp:Button ID="btnPunt_Click" runat="server" Height="48px" OnClick="btnPunt_Click_Click" Text="." Width="66px" CssClass="auto-style9" />
                            </td>
                            <td class="auto-style7">
                                <asp:Button ID="btnIs_Click" runat="server" Height="48px" OnClick="btnIs_Click_Click" Text="=" Width="66px" CssClass="auto-style9" />
                            </td>
                            <td>
                                <asp:Button ID="btn02_Click" runat="server" Height="48px" Text="O2" Width="66px" CssClass="auto-style9" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <br />
        </div>
    </form>
</body>
</html>
