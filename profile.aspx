<%@ Page Title="" Language="C#" MasterPageFile="MasterPage2.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="css/profile.css">
    <script src="js/profile.js" defer></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <div id="container">
      <h1 class="heading">Profile</h1>
      <div class="importantDetails flex">
        <div class="imageWrapper">
            <asp:Image ID="Image1" class="profileImage" runat="server" src="https://cdn.shopify.com/s/files/1/1045/8368/files/Ryan-Gosling-Wearing-Randolph-Aviator-23K-sunglasses-gold.jpg?v=1664965510"
            alt="" />
     <!--     <img
            src="https://cdn.shopify.com/s/files/1/1045/8368/files/Ryan-Gosling-Wearing-Randolph-Aviator-23K-sunglasses-gold.jpg?v=1664965510"
            alt=""
          />-->
             <asp:FileUpload ID="FileUpload1" class="editDetail imageChange" OnClientClick="handleImageChange(event); return false;" runat="server" value="Choose Image" />
        </div>

        <div class="namesWrapper">
          <label class="labels" for="name">Name</label>
          <div class="detailWrapper flex" onfocusout="handleUnfocus(event);">
              <asp:TextBox ID="TextBox1" runat="server" class="detailInput name" name="name" value="Ryan Gosling" disabled ></asp:TextBox>
              <asp:Button ID="Button2" AutoPostBack="true" runat="server" class="editDetail" OnClientClick="handleChange(event); " Text="Change"/>
          </div>
          <label class="labels" for="username">Username</label>
          <div class="detailWrapper flex" onfocusout="handleUnfocus(event);">
              <asp:TextBox ID="TextBox2" runat="server" class="detailInput username" name="username" value="LiterallyMe" disabled></asp:TextBox>
              <asp:Button ID="Button3" runat="server" class="editDetail" OnClientClick="handleChange(event); return false;" Text="Change" />
          </div>
        </div>
      </div>

         
      <div class="otherDetails">
        <label class="labels" for="phone">Phone</label>
        <div class="detailWrapper flex" onfocusout="handleUnfocus(event);">
            <asp:TextBox ID="TextBox3" class="detailInput phone" runat="server" min="000000000" max="9999999999" value="7879878720" disabled></asp:TextBox>
            <asp:Button ID="Button4" class="editDetail" OnClientClick="handleChange(event); return false;" runat="server" Text="Change" />
        </div>
        <label class="labels" for="email">Email</label>
        <div class="detailWrapper flex" onfocusout="handleUnfocus(event);">
            <asp:TextBox ID="TextBox4" class="detailInput email" runat="server" value="literally@me.com" disabled></asp:TextBox>
            <asp:Button ID="Button5" runat="server" class="editDetail" OnClientClick="handleChange(event); return false;" Text="Change" />
        </div>
        <label class="labels" for="address">Address</label>
        <div class="detailWrapper flex" onfocusout="handleUnfocus(event);">
            <asp:TextBox ID="TextBox5" class="detailInput address" runat="server" value="102, Beverly Hills, Los Angeles, USA" disabled></asp:TextBox>
            <asp:Button ID="Button6" runat="server" class="editDetail" OnClientClick="handleChange(event); return false;" Text="Change" />
        </div>
          <asp:Button ID="Button7" runat="server" class="editDetail editPassword" OnClientClick="handleChangePassword(event); return false;" Text="Change Password" />

        <div class="changePassword hiddenDiv">
          <form onsubmit="return handleNewPassword(event);">
            <label class="labels" for="currentPassword">Current Password</label>
              <asp:TextBox ID="TextBox6" runat="server" class="detailInput currentPassword" type="password" value=""></asp:TextBox>

            <label class="labels" for="newPassword">New Password</label>
              <asp:TextBox ID="TextBox7" runat="server" class="detailInput newPassword" type="password" value=""></asp:TextBox>

            <label class="labels" for="confirmPassword">Confirm Password</label>
              <asp:TextBox ID="TextBox8" runat="server" class="detailInput confirmPassword" type="password" value=""></asp:TextBox>

              <asp:Button ID="Button8" runat="server" class="editDetail submitNewPassword" type="submit" Text="Submit" />
          </form>
        </div>
        <div class="stopShowing actionsForChanges">
          <asp:Button ID="Button10" runat="server" class="discardChanges editDetail" Text="Discard Changes" />
          <asp:Button ID="Button11" runat="server" class="editDetail" Text="Submit Changes" OnClientClick="handleSubmitChangesToDatabase()" />
        </div>
        <br />
          <asp:Button ID="Button9" runat="server" class="deleteAccount editDetail" Text="Delete Account" />
      </div>
    </div>
</asp:Content>

