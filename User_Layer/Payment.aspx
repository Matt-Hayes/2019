<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPCPartsExpressSite.Master" AutoEventWireup="true" CodeBehind="~/Business_Layer/Payment.aspx.cs" Inherits="PCPPartsExpress.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!----------------------------------------------->
<!----Code to display payment selection page----->
<!----------------------------------------------->

        <!-- Breadcrumb to aid site navigation -->
    <div>
        <ul class="breadcrumb">
            <li><a href="Default.aspx">Home -></a></li>
            <li><a href="ShoppingCart.aspx">Cart -></a></li>
            <li class="active"> Payment</li>
        </ul>
    </div>

    <h3>Payment Details</h3>
    <br />

    <!-- Form to enter card details - Name -->
    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" ID="lblCardName" Text="Name on Card:"></asp:Label>
        <asp:TextBox runat="server" CssClass="form-control col-4" ID="txtbxCardName" />
        <asp:RequiredFieldValidator ID="rfvCardName" CssClass="valstyle" Display="Dynamic"
            runat="server" ControlToValidate="txtbxCardName"
            ErrorMessage="Please enter the name on your card">
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regexCardName" CssClass="valstyle" runat="server" Display="Dynamic"
            ValidationExpression="^[a-zA-Z\s]+$" ControlToValidate="txtbxCardName"
            ErrorMessage="Must contain only letters">
        </asp:RegularExpressionValidator>
    </div>

    <!-- Form to enter card details - Card Number -->
    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" ID="lblCardNumber" Text="Card Number:"></asp:Label>
        <asp:TextBox runat="server" CssClass="form-control col-4" ID="txtbxCardNumber" maxLength ="16"/>
        <asp:RequiredFieldValidator ID="rfvCardNumber" CssClass="valstyle" Display="Dynamic"
            runat="server" ControlToValidate="txtbxCardNumber"
            ErrorMessage="Please enter the number on your card">
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regexCardNumber" CssClass="valstyle" runat="server"  Display="Dynamic"
            ErrorMessage="Card Number contains only numbers"
            ValidationExpression="^\d+$" ControlToValidate="txtbxCardNumber">
        </asp:RegularExpressionValidator>
    </div>

    <!-- Form to enter card details - CVC -->
     <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" ID="lblCVC" Text="CVC:"></asp:Label>
        <asp:TextBox runat="server" CssClass="form-control col-4" ID="txtbxCVC" maxLength ="3"/>
        <asp:RequiredFieldValidator ID="rfvCVC" CssClass="valstyle" Display="Dynamic"
            runat="server" ControlToValidate="txtbxCVC"
            ErrorMessage="Please enter the CVC on your card">
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regexCVC" CssClass="valstyle" runat="server"  Display="Dynamic"
            ErrorMessage="CVC contains only numbers"
            ValidationExpression="^\d+$" ControlToValidate="txtbxCVC">
        </asp:RegularExpressionValidator>
    </div>
   
    <!-- Form to enter card details - Expiry -->
     <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" ID="lblExpiry" Text="Expiry:"></asp:Label>
        <asp:TextBox runat="server" CssClass="form-control col-1" ID="txtbxYear" MaxLength="4" Text="YYYY" />
         <asp:TextBox runat="server" CssClass="form-control col-1" ID="txtbxMonth" MaxLength="2" Text="MM" />
         <asp:TextBox runat="server" CssClass="form-control col-1" ID="txtbxDay" MaxLength="2" Text="DD"/> 

        <asp:RequiredFieldValidator ID="rfvYearExpiry" CssClass="valstyle" Display="Dynamic"
            runat="server" ControlToValidate="txtbxYear"
            ErrorMessage="Please enter the year on your card">
        </asp:RequiredFieldValidator>

        <asp:RequiredFieldValidator ID="rfvMothExpiry" CssClass="valstyle" Display="Dynamic"
            runat="server" ControlToValidate="txtbxMonth"
            ErrorMessage="Please enter the date on your card">
        </asp:RequiredFieldValidator>

        <asp:RequiredFieldValidator ID="rfvDayExpiry" CssClass="valstyle" Display="Dynamic"
            runat="server" ControlToValidate="txtbxDay"
            ErrorMessage="Please enter the date on your card">
        </asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator ID="regexYearExpiry" CssClass="valstyle" runat="server"  Display="Dynamic"
            ErrorMessage="Expiry contains only numbers"
            ValidationExpression="^\d+$" ControlToValidate="txtbxYear">
        </asp:RegularExpressionValidator>

        <asp:RegularExpressionValidator ID="regexMonthExpiry" CssClass="valstyle" runat="server"  Display="Dynamic"
            ErrorMessage="Expiry contains only numbers"
            ValidationExpression="^\d+$" ControlToValidate="txtbxMonth">
        </asp:RegularExpressionValidator>

        <asp:RegularExpressionValidator ID="regexDayExpiry" CssClass="valstyle" runat="server"  Display="Dynamic"
            ErrorMessage="Expiry contains only numbers"
            ValidationExpression="^\d+$" ControlToValidate="txtbxDay">
        </asp:RegularExpressionValidator>

    </div>

    <!-- Displays order information -->
    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label"  ID="lblPrice" Text="Order Total:"></asp:Label>
        <asp:Label runat="server" CssClass="col-4 col-form-label label"  ID="lblPriceTotal"></asp:Label>
    </div>

    <asp:Label runat="server" CssClass="col-2 col-form-label label"  ID="lblDescription" Text ="Description:"></asp:Label>
    <asp:Label runat="server" CssClass="col-4 col-form-label label"  ID="lblOrderDescription"></asp:Label>

    <br />
    <br />

  <asp:Button runat="server" CssClass="btn btn-outline-warning" ID="Confirmation" OnClick="BtnConfirmation_Click" Text="Continue"></asp:Button>
    <br />


    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label"  ID="lblPayment" Text="Payment Status:"></asp:Label>
        <asp:Label runat="server" CssClass="col-4 col-form-label label"  ID="lblPaymentStatus" Text="Pending"></asp:Label>
    </div>

</asp:Content>
