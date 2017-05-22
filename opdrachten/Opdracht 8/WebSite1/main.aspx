<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    zoek in de zoekbalk naar een film.
    <br />
    <asp:TextBox ID="txtZoek" runat="server"></asp:TextBox>
<asp:Button ID="btnZoek" runat="server" Text="Zoek" OnClick="Button1_Click" />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="movie_id" DataSourceID="SqlDataSource1" EmptyDataText="zoek in de zoekbalk naar een film. " Width="624px" Height="143px" Visible="false">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="release_date" HeaderText="release_date" SortExpression="release_date" />
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="review_id" DataSourceID="SqlDataSource2" Height="50px" Width="620px">
        <Fields>
            <asp:BoundField DataField="summary" HeaderText="summary" SortExpression="summary" />
            <asp:BoundField DataField="rating" HeaderText="Rating" SortExpression="rating" />
            <asp:BoundField DataField="review" HeaderText="Review" SortExpression="review" />
            <asp:BoundField DataField="reviewer" HeaderText="Reviewer" SortExpression="reviewer" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:introaspdotnetConnectionString1 %>" DeleteCommand="DELETE FROM [reviews] WHERE [review_id] = @review_id" InsertCommand="INSERT INTO [reviews] ([movie_id], [summary], [rating], [review], [reviewer]) VALUES (@movie_id, @summary, @rating, @review, @reviewer)" SelectCommand="SELECT * FROM [reviews] WHERE ([movie_id] = @movie_id)" UpdateCommand="UPDATE [reviews] SET [movie_id] = @movie_id, [summary] = @summary, [rating] = @rating, [review] = @review, [reviewer] = @reviewer WHERE [review_id] = @review_id">
        <DeleteParameters>
            <asp:Parameter Name="review_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="movie_id" Type="Int32" />
            <asp:Parameter Name="summary" Type="String" />
            <asp:Parameter Name="rating" Type="Int32" />
            <asp:Parameter Name="review" Type="String" />
            <asp:Parameter Name="reviewer" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="movie_id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="movie_id" Type="Int32" />
            <asp:Parameter Name="summary" Type="String" />
            <asp:Parameter Name="rating" Type="Int32" />
            <asp:Parameter Name="review" Type="String" />
            <asp:Parameter Name="reviewer" Type="String" />
            <asp:Parameter Name="review_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:introaspdotnetConnectionString1 %>" DeleteCommand="DELETE FROM [movies] WHERE [movie_id] = @movie_id" InsertCommand="INSERT INTO [movies] ([title], [release_date]) VALUES (@title, @release_date)" SelectCommand="SELECT [movie_id], [title], [release_date] FROM [movies] WHERE ([title] LIKE '%' + @title + '%')" UpdateCommand="UPDATE [movies] SET [title] = @title, [release_date] = @release_date WHERE [movie_id] = @movie_id">
        <DeleteParameters>
            <asp:Parameter Name="movie_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="release_date" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtZoek" Name="title" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="release_date" Type="DateTime" />
            <asp:Parameter Name="movie_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>

