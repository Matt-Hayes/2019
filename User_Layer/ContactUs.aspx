<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPCPartsExpressSite.Master" AutoEventWireup="true" CodeBehind="~/Business_Layer/ContactUs.aspx.cs" Inherits="PCPPartsExpress.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!--------------------------------------------------->
<!-----Code to the contact PC Parts Express Page----->
<!--------------------------------------------------->

    <!-- Breadcrumb to aid site navigation -->
      <div>
        <ul class="breadcrumb">
            <li><a href="Default.aspx">Home -></a></li>
            <li class="active">Contact Us</li>
        </ul>
    </div>

    <!-- site contact information -->
    <div class="card border-warning mb-3" style="max-width: 20rem;">
        <div class="card-header">Contact Us</div>
        <div class="card-body">
        <h6 class="card-title contactus">Email: foryoursupport@pcpartsexpress.com<br /><br />
            Phone Number: 02 4356 1234<br /><br />
            Location: 2319 whatstreet Lane,<br /> MysteriousSub, NSW, 2254
        </h6>
  </div>
</div>
</asp:Content>
