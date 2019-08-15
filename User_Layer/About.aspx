<%@ Page Title="About" Language="C#" MasterPageFile="~/MasterPCPartsExpressSite.Master" AutoEventWireup="true" CodeBehind="~/Business_Layer/About.aspx.cs" Inherits="PCPPartsExpress.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<!------------------------------------------------------->
<!--About page to display details of PC Parts Express---->
<!------------------------------------------------------->

    <!-- Breadcrumb to aid site navigation -->
    <div>
        <ul class="breadcrumb">
            <li><a href="Default.aspx">Home -></a></li>
            <li class="active"> About</li>
        </ul>
    </div>
   
    <!-- Display Site information-->
    <h1><%: Title %></h1>
    <p class="lead">Established in April 2019, PC Parts Express is a small computer parts shipping company thats plans on taking over Australia's computing parts shipping needs.
             We specialise in providing reliable and fast courier delivery across Australia, while our bulk buying power enables low prices across the range.
    </p>
    <!--Layout: https://www.pccasegear.com/contact_us -->
    <!--Code: -->
</asp:Content>

