<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPCPartsExpressSite.Master" AutoEventWireup="true" CodeBehind="~/Business_Layer/Logout.aspx.cs" Inherits="PCPPartsExpress.Logout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!--------------------------------------------------------------------------->
<!----Code to display logout confirmation page and allow another sign in----->
<!--------------------------------------------------------------------------->

    <!-- Breadcrumb to aid site navigation -->
          <div>
        <ul class="breadcrumb">
            <li><a href="Default.aspx">Home -></a></li>
            <li class="active">Log Out</li>
        </ul>
    </div>

    <!-- Logout Message -->
    <h2 class="h2logout">Thank you!</h2><br />
    <h3 class="h3logout">You have successfully logged out.</h3>
    <asp:Button runat="server" CssClass="btn btn-outline-warning" ID="LogoutBtn" OnClick="BtnLogouthome_Click" Text="Return Home"></asp:Button>
    <asp:Button runat="server" CssClass="btn btn-outline-warning" ID="Button1" OnClick="BtnLogout_Click" Text="Login"></asp:Button>

</asp:Content>
