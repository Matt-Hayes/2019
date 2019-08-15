<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPCPartsExpressSite.Master" AutoEventWireup="true" CodeBehind="~/Business_Layer/ErrorPage.aspx.cs" Inherits="PCPPartsExpress.User_Layer.Error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!------------------------------------------------------->
<!--About page to display details of PC Parts Express---->
<!------------------------------------------------------->

<!-- Breadcrumb to aid site navigation -->
<ul class="breadcrumb">
  <li><a href="Default.aspx">Home -></a></li>
  <li class="active">Error</li>
</ul>

    <!-- Error message -->
     <h3>Ooops something went wrong. </h3>
     <p class="lead">Our technology wizards have been notified of the error. Please try again.</p>
    <asp:Label runat="server" ID="lblError" />
    <br />
     <asp:Button runat="server" CssClass="btn btn-outline-warning" ID="LogoutBtn" OnClick="BtnLogouthome_Click" Text="Return Home"></asp:Button>
   
</asp:Content>
