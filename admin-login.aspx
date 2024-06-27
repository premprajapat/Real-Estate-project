<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="admin-login.aspx.cs" Inherits="admin_login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/admin.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="main">
        <p class="sign" align="center">Admin Login</p>
        <form class="form1">
            <asp:TextBox ID="TextBox1" runat="server" class="un" align="center" placeholder="Username"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" class="pass" align="center" placeholder="Password"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" class="submit" align="center" Text="Sign in" />  
            </form>     
    </div>
</asp:Content>

