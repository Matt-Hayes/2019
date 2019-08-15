<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPCPartsExpressSite.Master" AutoEventWireup="true" CodeBehind="~/Business_Layer/ProductDetail.aspx.cs" Inherits="PCPPartsExpress.User_Layer.ProductDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
<!----------------------------------------------->
<!-----Code to display Product Details page------>
<!----------------------------------------------->

        <!-- Breadcrumb to aid site navigation -->
        <ul class="breadcrumb">
            <li><a href="Default.aspx">Home -> </a></li>
            <li><a href="ProductListPage.aspx"><asp:label runat="server" ID="catref"></asp:label></a></li>
            <li class="active"><asp:label runat="server" ID="breadcrumref"></asp:label></li>

        </ul>
    </div>

    <!-- Table to display item information, visible false items are only avliable to admins-->
    <asp:table runat="server" Width="90%">
        <asp:TableRow>
            <asp:TableCell>
               <asp:Label id="lblProductName" runat="Server"></asp:Label>
               <asp:TextBox ID="txtbxProductName" runat="Server" visible ="false"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        
        <asp:TableRow>
            <asp:TableCell>
               <img id="img" src="../IMG/PCExample.jpg" runat="server" style="width: 150px; height: 150px;" />
            </asp:TableCell>
        <asp:TableCell>
               <asp:Label ID="lblPrice" runat="Server">price</asp:Label>
               <asp:TextBox ID="txtbxPrice" runat="Server" visible ="false"></asp:TextBox>
        </asp:TableCell>

              <asp:TableCell>
               <asp:Label ID="lblStock" runat="Server">stock bool</asp:Label>
               <asp:Label ID="lblStock2" runat="Server" visible ="false"></asp:Label>
                <asp:TextBox ID="txtbxStock" runat="Server" visible ="false"></asp:TextBox>
               <asp:Button ID="btnAddToCart" runat="server" Text="Add to cart" />
            </asp:TableCell>
        </asp:TableRow>

<asp:TableRow>
    <asp:TableCell>
<br />
         </asp:TableCell>
</asp:TableRow>

        <asp:TableRow style="border-top: 1px solid darkorange">
            <asp:TableCell>
               <asp:Label ID="lblDescription" runat="Server">Description</asp:Label>
                <asp:TextBox ID="txtbxDescription" runat="Server" visible ="false"></asp:TextBox>
                <br />
                <asp:Label ID="lblManufacturer" runat="Server">Manufacturer</asp:Label>
                <asp:TextBox ID="txtbxManufacturer" runat="Server" visible ="false"></asp:TextBox>
                <br />
                <asp:Label ID="lblModel" runat="Server">Model</asp:Label>
                <asp:TextBox ID="txtbxModel" runat="Server" visible ="false"></asp:TextBox>
                <br />
                <asp:Label ID="lblReleaseDate" runat="Server">Release Date</asp:Label>
                <asp:TextBox ID="txtbxReleaseDate" runat="Server" visible ="false"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    </asp:table>

               <!-- Control Buttons for editing items -->
            <asp:Button runat="server" ID="btnSave" Text="Save Details" Visible ="false" OnClick="btnSave_Click"/>
            <asp:Button runat="server" ID="btnEditPage" Text="Edit Details" Visible ="false" OnClick="btnEditPage_Click"/>
</asp:Content>
