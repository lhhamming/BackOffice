<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Opdr3.aspx.cs" Inherits="Calender" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form2 {
            background-color: #999999;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div aria-haspopup="False" aria-invalid="false">
    
        <asp:Calendar ID="kalVerjaardag" runat="server" OnSelectionChanged="kalVerjaardag_SelectionChanged" VisibleDate="1995-01-01" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar>
        <br />
        U heeft de onderstaande datum geselecteerd:</div>
        <asp:Label ID="TextBox1" runat="server" style="color: #0066FF"></asp:Label>
        <br />
        U bent nu<br />
        <asp:Label ID="TextBox2" runat="server" style="color: #0066FF"></asp:Label>
        <br />
        <asp:Button ID="btnLeeftijd" runat="server" OnClick="btnLeeftijd_Click" Text="Laat zien" />

    </form>
</body>
</html>
