<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <asp:RadioButtonList ID="rbBeslist" runat="server" OnSelectedIndexChanged="rbBeslist_SelectedIndexChanged" AutoPostBack="True">
        <asp:ListItem Value="LFZ" >Laat Formulier zien</asp:ListItem>
        <asp:ListItem Value="VF" Selected="True">Verberg Formulier</asp:ListItem>
        </asp:RadioButtonList>
    <asp:Panel ID="Panel1" runat="server" Visible="False">
    <div>
    
        <h1><strong>Wie ben je?</strong></h1>
        <br />
        Vul de onderstaande vragen in:</div>
        <table class="auto-style1">
            <tr>
                <td>Naam</td>
                <td style="margin-left: 40px">
                    <asp:TextBox ID="txtNaam" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Geslacht</td>
                <td>
                    <asp:RadioButtonList ID="rbGeslacht" runat="server" OnSelectedIndexChanged="rbGeslacht_SelectedIndexChanged" RepeatDirection="Horizontal">
                        <asp:ListItem Value="M">Man</asp:ListItem>
                        <asp:ListItem Value="V">Vrouw</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>Hobby</td>
                <td>
                    <asp:CheckBoxList ID="chkHobby" runat="server">
                        <asp:ListItem Value="1">GAMEN</asp:ListItem>
                        <asp:ListItem Value="2">Programmeren</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>Opleiding</td>
                <td>
                    <asp:DropDownList ID="cbOpleiding" runat="server">
                        <asp:ListItem Value="1">VMBO</asp:ListItem>
                        <asp:ListItem Value="2">HAVO</asp:ListItem>
                        <asp:ListItem Value="3">VWO</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                    <td>
                    <asp:Button ID="btnMaakKaart" runat="server" OnClick="btnMaakKaart_Click1" Text="Maak persoon aan" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
      </asp:Panel>

    </form>
</body>
</html>
