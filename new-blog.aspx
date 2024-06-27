<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="new-blog.aspx.cs" Inherits="new_blog" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/blog.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="container">
        <h1>New Blog</h1>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Heading" Class="heading"></asp:TextBox><br />
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Subheading" Class="subheading"></asp:TextBox>
      <!--  <input type="text" id="heading" placeholder="Enter Heading"><br>
        <input type="text" id="subheading" placeholder="Enter Subheading"><br>-->

        <span>Choose Category:</span>
            <asp:DropDownList ID="DropDownList1" Class="category" runat="server">
                <asp:ListItem value="option1" class="option">option 1</asp:ListItem>
                <asp:ListItem value="option2" class="option">option 2</asp:ListItem>
                <asp:ListItem value="option3" class="option">option 3</asp:ListItem>
            </asp:DropDownList><br />

        <span>Enter Your blog image:</span>
        <asp:FileUpload ID="FileUpload1" name="image" class="image" placeholder="Choose your Blog Image" runat="server" />
        <!-- <input type="file" name="image" id="image" placeholder="Choose your Blog Image">-->
        <asp:TextBox ID="TextBox3" runat="server" class="blogContent" TextMode="MultiLine" placeholder="Enter main blog content" cols="30" rows="25"></asp:TextBox>
        <!--<textarea name="Main Content" id="blogContent" placeholder="Enter main blog content" cols="30" rows="25"></textarea>-->


        <div id="buttons">
            <asp:Button ID="Button1" runat="server" Class="publish" Text="Publish" />
            <asp:Button ID="Button2" runat="server" Class="cancel" Text="Cancel" />
          <!--  <button id="publish">Publish</button>
            <button id="cancel">Cancel</button>-->
        </div>
    </div>
</asp:Content>

