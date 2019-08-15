<%@ Page Title="My Account" Language="C#" MasterPageFile="~/MasterPCPartsExpressSite.Master" AutoEventWireup="true" CodeBehind="~/Business_Layer/Account.aspx.cs" Inherits="PCPPartsExpress.Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!------------------------------------------------------->
<!----Code to display user sppecific account details----->
<!------------------------------------------------------->

<!-- Breadcrumb to aid site navigation -->
    <div>
        <ul class="breadcrumb">
            <li><a href="Default.aspx">Home -></a></li>
            <li class="active"> Account</li>
        </ul>
    </div>


<h1><%:Title %></h1>

<div class="card border-warning mb-4" style="max-width: 20rem;">
  <div class="card-header">Personal Details</div>
  <div class="card-body">

      <!-- Display accounmt details and means to edit details-->
    <asp:Label runat="server" ID="lblAccfName" CssClass="card-subtitle mb-2 label" Text=""/>
      <asp:Label runat="server" ID="lblAcclName" CssClass="card-subtitle mb-2 label" Text=""/>

      <asp:TextBox runat="server" Visible="False" ID="txtAccfName"></asp:TextBox>
      <asp:TextBox runat="server" Visible="False" ID="txtAcclName"></asp:TextBox>
            <br />
    <asp:Label runat="server" ID="lblAccAddress" CssClass="card-subtitle mb-2 label" Text=""/>
      <asp:TextBox runat="server" Visible="False" ID="txtAccAddress"></asp:TextBox>
            <br />
    <asp:Label runat="server" ID="lblAccPhoneNumber" CssClass="card-subtitle mb-2 label" Text=""/>
      <asp:TextBox runat="server" Visible="False" ID="txtAccPhoneNumber"></asp:TextBox>
            <br />
    <asp:Label runat="server" ID="lblAccEmail" CssClass="card-subtitle mb-2 label" Text=""/>

      <!-- Buttons to control edit commands -->
    <asp:Button ID="EditDetailsbtn" runat="server" CssClass="float-right" Text="Edit details" OnClick="Editpage_Click" />
    <asp:Button ID="EditConfirmbtn" runat="server" CssClass="float-right" Text="Done" OnClick="EditConfirm_Click" Visible="False"/>

  </div>
</div>

<!-- Quick view to Display previous transaction details -->
    <div class="card border-warning mb-3" style="max-width: 50rem;">
  <div class="card-header">Purchase History</div>
  <div class="card-body">
    <asp:Table runat="server" CssClass="tablestyle">
        <asp:TableHeaderRow>
            <asp:TableCell>Order #</asp:TableCell>
            <asp:TableCell>Date</asp:TableCell>
            <asp:TableCell>Ship To</asp:TableCell>
            <asp:TableCell>Courier Tracking</asp:TableCell>
            <asp:TableCell>Order total</asp:TableCell>
            <asp:TableCell>Status</asp:TableCell>
            <asp:TableCell></asp:TableCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell>0000001</asp:TableCell>
            <asp:TableCell>9/04/2019</asp:TableCell>
             <asp:TableCell > <asp:Label runat="server" ID="lblAccName2"></asp:Label></asp:TableCell>
            <asp:TableCell>AB12345678</asp:TableCell>
            <asp:TableCell>$500.00</asp:TableCell>
            <asp:TableCell>On Hold</asp:TableCell>
            <asp:TableCell>Order Details/Changes</asp:TableCell>
        </asp:TableRow>
    </asp:Table>
  </div>

        <!-- logout button -->
</div>
        <ul class="nav nav-pills">
       <li class="nav-item navsize"><a class="nav-link active" runat="server" href="~/User_Layer/Logout.aspx">Logout</a></li>
    </ul>
</asp:Content>
