<%@ Page Title="Wellness-Management-Therapists" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="Therapists.aspx.cs" Inherits="Management_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="TherapistName" HeaderText="TherapistName" SortExpression="TherapistName" />
    </Columns>
</asp:GridView>
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
    <Fields>
        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="TherapistName" HeaderText="TherapistName" SortExpression="TherapistName" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" DeleteCommand="DELETE FROM [Therapists] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Therapists] ([Id], [TherapistName]) VALUES (@Id, @TherapistName)" ProviderName="<%$ ConnectionStrings:MyConnectionString.ProviderName %>" SelectCommand="SELECT [Id], [TherapistName] FROM [Therapists]" UpdateCommand="UPDATE [Therapists] SET [TherapistName] = @TherapistName WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Id" Type="Int32" />
        <asp:Parameter Name="TherapistName" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TherapistName" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

