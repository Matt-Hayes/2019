<%@ Page Title="Admin Managment" Language="C#" MasterPageFile="~/MasterPCPartsExpressSite.Master" AutoEventWireup="true" CodeBehind="~/Business_Layer/AdminMain.aspx.cs" Inherits="PCPPartsExpress.AdminMain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!-------------------------------------------->
<!------Code to display admin main page------->
<!-------------------------------------------->

    <!-- Breadcrumb to aid site navigation -->
  <div>
        <ul class="breadcrumb">
            <li><a href="Default.aspx">Home -></a></li>
            <li class="active">Admin Main</li>
        </ul>
    </div>

    <h3><%:Title %></h3>

    <!--Display admin details-->
<div class="card border-warning mb-4" style="max-width: 20rem;">
  <div class="card-header">Personal Details</div>
  <div class="card-body">
    <asp:Label runat="server" ID="lblAccName" CssClass="card-subtitle mb-2 label"/>
            <br />
    <asp:Label runat="server" ID="lblAccEmail" CssClass="card-subtitle mb-2 label"/>
    <asp:Button runat="server" CssClass="float-right" Text="Edit details" />
  </div>
</div>


    <h2>Admin Controls</h2>

     <!--Update Inventory Control-->
 <div class="row" style="margin-bottom: 20px ">
     <div class="col-md-4">
        <div class="card border-warning mb4" style="max-width: 15rem;">
        <div class="card-header">Add Inventory Item</div>
        <div class="card-body">
        <asp:Label runat="server" ID="Label1" CssClass="card-subtitle mb-2 label" Text="Admin tool used to add products to PC Parts Express Inventory"/>
            <br />
        <asp:Button runat="server" ID="AdminAddInventory" OnClick="BtnAdminAddInventory_Click" CssClass="float-none" Text="Add Inventory" />
      
            </div>
        </div>
    </div>

          <!--Update Inventory Control-->
     <div class="col-md-4">
        <div class="card border-warning mb4" style="max-width: 15rem;">
        <div class="card-header">Manage Inventory</div>
        <div class="card-body">
        <asp:Label runat="server" ID="Label2" CssClass="card-subtitle mb-2 label" Text="Admin tool used edit the products of PC Parts Express Inventory"/>
            <br />
        <asp:Button runat="server" ID="Button1" OnClick="BtnAdminViewSupport_Click" CssClass="float-none" Text="Edit Stock" />
      
            </div>
        </div>
    </div>

     <!--View user Accounts-->
     <div class="col-md-4">
        <div class="card border-warning mb4" style="max-width: 15rem;">
        <div class="card-header">View User Accounts</div>
        <div class="card-body">
        <asp:Label runat="server" ID="Label3" CssClass="card-subtitle mb-2 label" Text="Admin tool used to view user account details of PC Parts Express Inventory"/>
            <br />
        <asp:Button runat="server" ID="Button2" OnClick="BtnAdminViewUserAccounts_Click" CssClass="float-none" Text="View user Accounts" />
      
            </div>
        </div>
    </div>

     <!-- logout button-->
 </div>
        <ul class="nav nav-pills">
       <li class="nav-item navsize"><a class="nav-link active" runat="server" href="~/User_Layer/Logout.aspx">Logout</a></li>
    </ul>


</asp:Content>
