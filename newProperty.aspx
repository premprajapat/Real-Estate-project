<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="newProperty.aspx.cs" Inherits="js_newProperty" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link rel="stylesheet" href="css/makeProperty.css">
    <script src="js/new-property.js" defer></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="wrapper">
        <div class="innerWrapper">
            <div class="newPropertyContainer">
                <h1>New Property</h1>
                <div class="propertyTypeChoice">
                    <asp:DropDownList ID="DropDownList1" runat="server" name="propertyType" class="propertyType">
                        <asp:ListItem value="House">House</asp:ListItem>
                        <asp:ListItem value="Apartment">Apartment</asp:ListItem>
                        <asp:ListItem value="Office">Office</asp:ListItem>
                    </asp:DropDownList>

                    <asp:DropDownList ID="DropDownList2" runat="server" name="propertyService" class="propertyService">
                        <asp:ListItem value="For Rent">For Rent</asp:ListItem>
                        <asp:ListItem value="For Selling">For Selling</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Button1" Width="130px" runat="server" Text="Make Property" class="submitTypeChoice publish" />
                   <!-- <button class="submitTypeChoice">Make Property</button> -->
                </div>

                <div class="propertyDetails stopShowing">

                    <h2>Enter Address:</h2>
                    <label for="addressHouseNo">House No. :</label>
                    <asp:TextBox ID="TextBox1" runat="server" class="addressHouseNo" placeholder="Enter House No." required></asp:TextBox><br />
                   <!-- <input type="text" class="addressHouseNo" placeholder="Enter House No." required><br>-->

                    <label for="addressLocality">Locality/Street :</label>
                    <asp:TextBox ID="TextBox2" runat="server" class="addressLocality" placeholder="Enter Locality/Street" required></asp:TextBox><br />
                 <!--   <input type="text" class="addressLocality" placeholder="Enter Locality/Street" required><br>-->

                    <label for="addressLandmark">Landmark :</label>
                    <asp:TextBox ID="TextBox3" runat="server" class="addressLandmark" placeholder="Enter Landmark"></asp:TextBox><br />
                 <!--   <input type="text" class="addressLandmark" placeholder="Enter Landmark"><br>-->

                    <label for="addressCity">City :</label>
                    <asp:TextBox ID="TextBox4" runat="server" class="addressCity" placeholder="Enter City" required></asp:TextBox>
                  <!--  <input type="text" class="addressCity" placeholder="Enter City" required><br>-->

                    <label for="addressState">State :</label>
                    <asp:TextBox ID="TextBox5" runat="server" class="addressState" placeholder="Enter State" required></asp:TextBox>
                  <!--  <input type="text" class="addressState" placeholder="Enter State" required><br>-->

                    <label for="addressCountry">Country :</label>
                    <asp:TextBox ID="TextBox6" runat="server" class="addressCountry" placeholder="Enter Country" required></asp:TextBox>
                  <!--  <input type="text" class="addressCountry" placeholder="Enter Country" required><br>-->

                    <h2>Enter Main Details:</h2>
                    <br>

                    <span>Enter Main image 1:</span>
                    <asp:FileUpload ID="FileUpload1" runat="server" name="image" class="image mainImage imageMain1" placeholder="Choose your Blog Image" />

                    <span>Enter Main image 2:</span>
                    <asp:FileUpload ID="FileUpload2" runat="server" name="image" class="image mainImage imageMain2" placeholder="Choose your Blog Image" />

                    <span>Enter Main image 3:</span>
                    <asp:FileUpload ID="FileUpload3" runat="server" name="image" class="image mainImage imageMain3" placeholder="Choose your Blog Image" />

                    <span>Enter Main image 4:</span>
                    <asp:FileUpload ID="FileUpload4" runat="server" name="image" class="image mainImage imageMain4" placeholder="Choose your Blog Image" />

                    <span>Enter Additional image 1:</span>
                    <asp:FileUpload ID="FileUpload5" runat="server" name="image" class="image imageAdditional1" placeholder="Choose your Blog Image" />

                    <span>Enter Additional image 2:</span>
                    <asp:FileUpload ID="FileUpload6" runat="server" name="image" class="image imageAdditional2" placeholder="Choose your Blog Image" />

                    <span>Enter Additional image 3:</span>
                    <asp:FileUpload ID="FileUpload7" runat="server" name="image" class="image imageAdditional3" placeholder="Choose your Blog Image" />

                    <span>Enter Additional image 4:</span>
                    <asp:FileUpload ID="FileUpload8" runat="server" name="image" class="image imageAdditional4" placeholder="Choose your Blog Image" />


                    <div class="priceDiv">
                        <asp:Label ID="Label1" for="price" runat="server" Text="Price (in Rupees):" class="priceLabel"></asp:Label>
                   <!--     <label for="price" class="priceLabel">Price (in Rupees):</label> -->
                        <asp:TextBox ID="TextBox7" runat="server" name="price" class="price"></asp:TextBox>
                  <!--      <input type="number" name="price" class="price"> -->
                        <div class="forRent stopShowing">
                            <asp:DropDownList ID="DropDownList3" class="priceDuration" runat="server">
                                <asp:ListItem value="per Month">per Month</asp:ListItem>
                                <asp:ListItem value="per Quarter">per Quarter</asp:ListItem>
                                <asp:ListItem value="per Year">per Year</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="Security Amount (in Rupees):" for="security amount" class="priceLabel"></asp:Label>
                        <!--    <label for="security amount" class="priceLabel">Security Amount (in Rupees):</label>-->
                            <asp:TextBox ID="TextBox8" runat="server" name="security amount" class="securityAmount"></asp:TextBox>
                        <!--    <input type="number" name="security amount" class="securityAmount"> -->
                        </div>
                    </div>
                    <asp:Label ID="Label3" runat="server" for="area" class="areaLabel" Text="Total Area (in sqft.):"></asp:Label>
                <!--    <label for="area" class="areaLabel">Total Area (in sqft.):</label> -->
                    <asp:TextBox ID="TextBox9" runat="server" name="area" class="area"></asp:TextBox>
               <!--     <input type="number" name="area" class="area"> -->

                    <div class="forOffice stopShowing">
                        <asp:Label ID="Label4" runat="server" for="seats no." class="seatsNoInputLabel" Text="Seats no.(if applicable):"></asp:Label>
                  <!--      <label for="seats no." class="seatsNoInputLabel">Seats no.(if applicable):</label> -->
                        <asp:TextBox ID="TextBox10" runat="server" name="seats no." min="0" class="seatsNoInput"></asp:TextBox>
                 <!--       <input type="number" name="seats no." min="0" class="seatsNoInput">-->

                        <asp:Label ID="Label5" for="desks no." class="desksNoInputLabel" runat="server" Text="Desks no.(if applicable):"></asp:Label>
                    <!--    <label for="desks no." class="desksNoInputLabel">Desks no.(if applicable):</label>-->
                        <asp:TextBox ID="TextBox11" runat="server" name="desks no." min="0" class="desksNoInput"></asp:TextBox>
                     <!--   <input type="number" name="desks no." min="0" class="desksNoInput">-->

                        <asp:Label ID="Label6" runat="server" for="cabins no." class="cabinsNoInputLabel" Text="Cabins no.(if applicable):"></asp:Label>
                    <!--    <label for="cabins no." class="cabinsNoInputLabel">Cabins no.(if applicable):</label>-->
                        <asp:TextBox ID="TextBox12" runat="server" name="cabins no." min="0" class="cabinsNoInput"></asp:TextBox>
                    <!--    <input type="number" name="cabins no." min="0" class="cabinsNoInput"> -->
                    </div>
                    <div class="forHome stopShowing">
                        <asp:Label ID="Label7" runat="server" Text="No. of Rooms :" for="rooms no." class="roomsNoInputLabel"></asp:Label>
                   <!--     <label for="rooms no." class="roomsNoInputLabel">No. of Rooms :</label>-->
                        <asp:TextBox ID="TextBox13" runat="server" name="rooms no." min="0" class="roomsNoInput"></asp:TextBox>
                    <!--    <input type="number" name="rooms no." min="0" class="roomsNoInput"> -->
                        <asp:Label ID="Label8" runat="server" Text="No. of Bathrooms :" for="baths no." class="bathsNoInputLabel"></asp:Label>
                 <!--       <label for="baths no." class="bathsNoInputLabel">No. of Bathrooms :</label> -->
                        <asp:TextBox ID="TextBox14" runat="server" name="baths no." min="0" class="bathsNoInput"></asp:TextBox>
                     <!--   <input type="number" name="baths no." min="0" class="bathsNoInput"> -->
                    </div>
                    <asp:Label ID="Label9" runat="server" Text="Parking (for how many cars):" for="parking" class="parkingLabel"></asp:Label>
             <!--       <label for="parking" class="parkingLabel">Parking (for how many cars):</label> -->
                    <asp:TextBox ID="TextBox15" runat="server" name="parking" class="parking"></asp:TextBox>
                 <!--   <input type="number" name="parking" class="parking"> -->
                    <asp:Label ID="Label10" runat="server" Text="Floor No. (if applicable):" for="floor" class="floorLabel"></asp:Label>
               <!--     <label for="floor" class="floorLabel">Floor No. (if applicable):</label> -->
                    <asp:TextBox ID="TextBox16" runat="server" name="floor" class="floor"></asp:TextBox>
                <!--    <input type="number" name="floor" class="floor"> -->

                    <label for="furnishedStatus">Furnished Status</label>
                    <asp:DropDownList ID="DropDownList4" runat="server" name="furnishedStatus" class="furnishedStatus">
                        <asp:ListItem value="Furnished">Furnished</asp:ListItem>
                        <asp:ListItem value="Semi-Furnished">Semi-Furnished</asp:ListItem>
                        <asp:ListItem value="Unfurnished">Unfurnished</asp:ListItem>
                    </asp:DropDownList><br />
    
                    <label for="additionalDetails">Additional Details:</label>
                    <asp:TextBox ID="TextBox17" runat="server" name="additionalDetails" class="additionalDetails" placeholder="Enter additional details" TextMode="MultiLine" Height="200px"></asp:TextBox>

                    <div class="buttons">
                        <asp:Button ID="Button2" Width="90px" class="publish" runat="server" Text="Publish" />
                        <asp:Button ID="Button3" Width="90px" class="cancel" runat="server" Text="Cancel" />
                    <!--    <button class="publish">Publish</button>
                        <button class="cancel">Cancel</button>-->
                    </div>
            </div>
        </div>
    </div>
</asp:Content>

