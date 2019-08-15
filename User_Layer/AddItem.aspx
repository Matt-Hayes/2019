<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPCPartsExpressSite.Master" AutoEventWireup="true" CodeBehind="~/Business_Layer/AddItem.aspx.cs" Inherits="PCPPartsExpress.User_Layer.AddItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h2><%:Title%></h2>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
        <div>

<!------------------------------------------>
<!------Code to display add item page------->
<!------------------------------------------>

<!-- Breadcrumb to aid site navigation -->
        <ul class="breadcrumb">
            <li><a href="Default.aspx">Home -></a></li>
            <li><a href="AdminMain.aspx">Admin Main -></a></li>
            <li class="active">Add Item</li>
        </ul>
    </div>

    <asp:Panel ID="AddItemPanel" runat="server" DefaultButton="SubmitButton">

<!--obtain the product name with validation for item creation-->
    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" ID="lblproductname" Text="Product Name"></asp:Label>
        <asp:TextBox runat="server" CssClass="form-control col-4" ID="txtbxproductname" />
        <asp:RequiredFieldValidator ID="rfvproductname" CssClass="valstyle" Display="Dynamic"
            runat="server" ControlToValidate="txtbxproductname"
            ErrorMessage="Please enter a product name">
        </asp:RequiredFieldValidator>
    </div>

<!--obtain the category from list of valid categories for item creation-->
    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" ID="lblcategory" Text="Category"></asp:Label>
        <asp:DropDownList runat="server" CssClass="form-control col-4" ID="ddlcategory">
            <asp:ListItem>Please choose the product catagory</asp:ListItem>
            <asp:ListItem>Case</asp:ListItem>
            <asp:ListItem>Motherboard</asp:ListItem>
            <asp:ListItem>CPU</asp:ListItem>
            <asp:ListItem>Cooler</asp:ListItem>
            <asp:ListItem>Memory</asp:ListItem>
            <asp:ListItem>GPU</asp:ListItem>
            <asp:ListItem>Monitor</asp:ListItem>
            <asp:ListItem>Mice</asp:ListItem>
            <asp:ListItem>Keyboards</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator Display="dynamic" CssClass="valstyle" ID="rfvcategory"
            runat="server" ControlToValidate="ddlcategory"
            ErrorMessage="Please choose the product catagory"
            InitialValue="Please choose the product catagory">
        </asp:RequiredFieldValidator>
    </div>

<!--obtain the model with validation for item creation-->
    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" ID="lblmodel" Text="Model"></asp:Label>
        <asp:TextBox runat="server" CssClass="form-control col-4" ID="txtbxmodel" />
        <asp:RequiredFieldValidator ID="rfvmodel" CssClass="valstyle" Display="Dynamic"
            runat="server" ControlToValidate="txtbxmodel"
            ErrorMessage="Please enter the product model"> 
        </asp:RequiredFieldValidator>
    </div>

<!--obtain the manufacturer with validation for item creation-->
    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" Text="Manufacturer" ID="lblmanufacturer"></asp:Label>
        <asp:TextBox runat="server" CssClass="form-control col-4" ID="txtbxmanufacturer" />
        <asp:RequiredFieldValidator ID="rfvmanufacturer" CssClass="valstyle" Display="Dynamic"
            runat="server" ControlToValidate="txtbxmanufacturer"
            ErrorMessage="Please enter product manufacturer"> 
        </asp:RequiredFieldValidator>
    </div>

<!--obtain the price per unit with validation for item creation-->
    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" Text="Individual Item Price" ID="lblprice"></asp:Label>
        <asp:TextBox runat="server" CssClass="form-control col-4" MaxLength="10" ID="txtbxprice" />
        <asp:RequiredFieldValidator ID="rfvprice" CssClass="valstyle" Display="Dynamic"
            runat="server" ControlToValidate="txtbxprice"
            ErrorMessage="Please enter price per unit of the product"> 
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regexprice" runat="server"
            ErrorMessage="Price contains only numbers" Display="Dynamic"
            ValidationExpression="^\d+$" ControlToValidate="txtbxprice">
        </asp:RegularExpressionValidator>
    </div>


<!--obtain the initial stock count with validation for item creation-->
    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" Text="Initial Stock Count" ID="lblstock"></asp:Label>
        <asp:TextBox runat="server" CssClass="form-control col-4" ID="txtbxstock" MaxLength="10" />
        <asp:RequiredFieldValidator ID="rfvstock" CssClass="valstyle" Display="Dynamic"
            runat="server" ControlToValidate="txtbxstock"
            ErrorMessage="Please enter the stock count"> 
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regexstock" runat="server"
            ErrorMessage="Stock Count contains only numbers" Display="Dynamic"
            ValidationExpression="^\d+$" ControlToValidate="txtbxstock">
        </asp:RegularExpressionValidator>
    </div>

<!--obtain the product description with validation for item creation-->
    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" ID="lbldescription" Text="Product Description"></asp:Label>
        <asp:TextBox runat="server" CssClass="form-control col-4" ID="txtbxdescription" MaxLength="1000" />
        <asp:RequiredFieldValidator ID="rfvdescription" CssClass="valstyle" Display="Dynamic"
            runat="server" ControlToValidate="txtbxdescription"
            ErrorMessage="Please enter product description"> 
        </asp:RequiredFieldValidator>
    </div>

<!--Submit button-->
    <asp:Button runat="server" CssClass="btn btn-outline-warning" ID="SubmitButton" OnClick="BtnSubmit_Click" Text="Submit"></asp:Button>
    <asp:Label runat="server"  CssClass="col-2 col-form-label label" ID="lblconfirmation" Text="Item Added Successfully" Visible="false"></asp:Label>
        </asp:Panel>
</asp:Content>
