<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="sign-in.aspx.cs" Inherits="sign_in" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="d-flex justify-content-center align-items-center mt-5">
        <div class="card">
            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                <li class="nav-item text-center">
                  <a class="nav-link active btl" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Login</a>
                </li>
                <li class="nav-item text-center">
                  <a class="nav-link btr" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Signup</a>
                </li>               
              </ul>
              <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">                 
                  <div class="form px-4 pt-5">
                      <asp:TextBox ID="TextBox5" runat="server"  name="" class="form-control" placeholder="Email or Phone"></asp:TextBox>
                      <asp:TextBox ID="TextBox6" runat="server" name="" class="form-control" placeholder="Password"></asp:TextBox>
                      <asp:Button ID="Button2" runat="server" Text="Login" class="btn btn-dark btn-block"/>

                      <asp:Button ID="Button3" runat="server" Text="Forgot Password" class="btn btn-dark btn-block"/>
                


               <!--     <input type="text" name="" class="form-control" placeholder="Email or Phone">
                    <input type="text" name="" class="form-control" placeholder="Password">
                    <button class="btn btn-dark btn-block">Login</button>-->


                  </div>
                </div>
                <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">                 
                  <div class="form px-4">
                      <asp:TextBox ID="TextBox1" runat="server" name="" class="form-control" placeholder="Name"></asp:TextBox>
                      <asp:TextBox ID="TextBox2" runat="server" name="" class="form-control" placeholder="Email"></asp:TextBox>
                      <asp:TextBox ID="TextBox3" runat="server" name="" class="form-control" placeholder="Phone"></asp:TextBox>
                      <asp:TextBox ID="TextBox4" runat="server" name="" class="form-control" placeholder="Password"></asp:TextBox>
                      <asp:Button ID="Button1" runat="server" Text="Signup" class="btn btn-dark btn-block"/>


                   <!-- <input type="text" name="" class="form-control" placeholder="Name">
                    <input type="text" name="" class="form-control" placeholder="Email">
                    <input type="text" name="" class="form-control" placeholder="Phone">
                    <input type="text" name="" class="form-control" placeholder="Password">
                    <button class="btn btn-dark btn-block">Signup</button>      --> 
                      
                                   
                  </div>
                 </div>   
               </div>
        </div>        
      </div> 
</asp:Content>

