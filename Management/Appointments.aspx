<%@ Page Title="Management-Scheduling" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="Appointments.aspx.cs" Inherits="Management_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">         
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">

    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="DetailsView1_PageIndexChanging" DataKeyNames="Id" style="margin-right: 3px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="ClientName" HeaderText="ClientName" SortExpression="ClientName" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                <asp:TemplateField HeaderText="TherapistName" SortExpression="TherapistName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TherapistName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="TherapistName" DataValueField="TherapistName" SelectedValue='<%# Bind("TherapistName") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" SelectCommand="SELECT [Id], [TherapistName] FROM [Therapists]"></asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("TherapistName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:CheckBoxField DataField="NewClient" HeaderText="NewClient" SortExpression="NewClient" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" SelectCommand="SELECT [ClientName], [Id], [Date], [Time], [TherapistName], [Notes], [NewClient] FROM [Appointments]" DeleteCommand="DELETE FROM [Appointments] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Appointments] ([ClientName], [Date], [Time], [TherapistName], [Notes], [NewClient]) VALUES (@ClientName, @Date, @Time, @TherapistName, @Notes, @NewClient)" UpdateCommand="UPDATE [Appointments] SET [ClientName] = @ClientName, [Date] = @Date, [Time] = @Time, [TherapistName] = @TherapistName, [Notes] = @Notes, [NewClient] = @NewClient WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ClientName" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="TherapistName" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="NewClient" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ClientName" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="TherapistName" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="NewClient" Type="Boolean" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    
        
    </asp:Content>

