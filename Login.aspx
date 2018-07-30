<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>Login to Wellness and Beyond</h1>
<authentication mode="Forms"/>
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>
            <asp:Login ID="Login1" runat="server" CreateUserText="Sign up for an account" CreateUserUrl="SignUp.aspx">
            </asp:Login>
        </AnonymousTemplate>
        <LoggedInTemplate>
            You are already logged in
            <a href="Management/Default.aspx"><br>Management Home<br /></a>
        </LoggedInTemplate>
    </asp:LoginView>
    <asp:LoginStatus ID="LoginStatus1" runat="server" OnLoggingOut="LoginStatus1_LoggingOut1" />
</asp:Content>

