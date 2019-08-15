<%@ Page Title="Create an Account" Language="C#" MasterPageFile="~/MasterPCPartsExpressSite.Master" AutoEventWireup="true" CodeBehind="~/Business_Layer/Registration.aspx.cs" Inherits="PCPPartsExpress.Registration" %>

<asp:Content ID="RegistrationContent" ContentPlaceHolderID="MainContent" runat="server">

<!------------------------------------------------------------->
<!----Code to display the registration page for a new user----->
<!------------------------------------------------------------->

          <div>
        <ul class="breadcrumb">
            <li><a href="Default.aspx">Home -></a></li>
            <li class="active">Register</li>
        </ul>
    </div>

    <h2><%:Title%></h2>
    <script src="Scripts/jquery-3.0.0.min.js"></script>

    <asp:Panel ID="RegistrationPanel" runat="server" DefaultButton="RegisterButton">

<!--obtain the user first name with validation for account creation-->
    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" ID="lblfirstname" Text="First Name"></asp:Label>
        <asp:TextBox runat="server" CssClass="form-control col-4" ID="txtbxfirstname" />
        <asp:RequiredFieldValidator ID="rfvfirstname" CssClass="valstyle" Display="Dynamic"
            runat="server" ControlToValidate="txtbxfirstname"
            ErrorMessage="Please enter your first name">
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regexfirstname" CssClass="valstyle" runat="server" Display="Dynamic"
            ValidationExpression="^[a-zA-Z\s]+$" ControlToValidate="txtbxfirstname"
            ErrorMessage="Must contain only letters">
        </asp:RegularExpressionValidator>
    </div>

<!--obtain the user last name with validation for account creation-->
    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" ID="lbllastname" Text="Last Name"></asp:Label>
        <asp:TextBox runat="server" CssClass="form-control col-4" ID="txtbxlastname" />
        <asp:RequiredFieldValidator ID="rfvlastname" CssClass="valstyle" Display="Dynamic"
            runat="server" ControlToValidate="txtbxlastname"
            ErrorMessage="Please enter your last name"> 
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regexlastname" CssClass="valstyle" runat="server"
            ErrorMessage="Must contain only letters" Display="Dynamic"
            ValidationExpression="^[a-zA-Z\s]+$" ControlToValidate="txtbxlastname">
        </asp:RegularExpressionValidator>
    </div>

<!--obtain the user street address with validation for account creation-->
    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" Text="Street address" ID="lblstreetaddress"></asp:Label>
        <asp:TextBox runat="server" CssClass="form-control col-4" ID="txtbxstreetaddress" />
        <asp:RequiredFieldValidator ID="rfvstreetaddress" CssClass="valstyle" Display="Dynamic"
            runat="server" ControlToValidate="txtbxstreetaddress"
            ErrorMessage="Please enter your Street Address"> 
        </asp:RequiredFieldValidator>
    </div>

    <div class="form-group row">
        <div class="col-2 col-form-label label"></div>
        <asp:TextBox runat="server" CssClass="form-control col-4" ID="txtbxstreetaddress1" />
    </div>

<!--obtain the user postcode with validation for account creation-->
    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" Text="Postcode" ID="lblpostcode"></asp:Label>
        <asp:TextBox runat="server" CssClass="form-control col-4" MaxLength="4" ID="txtbxpostcode" />
        <asp:RequiredFieldValidator ID="rfvpostcode" CssClass="valstyle" Display="Dynamic"
            runat="server" ControlToValidate="txtbxpostcode"
            ErrorMessage="Please enter your postcode"> 
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regexpostcode" CssClass="valstyle" runat="server"
            ErrorMessage="Postcode contains only numbers" Display="Dynamic"
            ValidationExpression="^\d+$" ControlToValidate="txtbxpostcode">
        </asp:RegularExpressionValidator>
    </div>

<!--obtain the user Suburb with validation for account creation-->
    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" ID="lblsuburbs" Text="Suburbs"></asp:Label>
        <asp:TextBox runat="server" CssClass="form-control col-4" ID="txtbxsuburb" />
        <asp:RequiredFieldValidator ID="rfvsuburbs" CssClass="valstyle" Display="Dynamic"
            runat="server" ControlToValidate="txtbxsuburb"
            ErrorMessage="Please enter your suburb">
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regexsuburbs" CssClass="valstyle" runat="server"
            ErrorMessage="Must contain only letters" Display="Dynamic"
            ValidationExpression="^[a-zA-Z\s]+$" ControlToValidate="txtbxsuburb">
        </asp:RegularExpressionValidator>
    </div>

<!--obtain the user state from list of valid states for account creation-->
    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" Text="State"></asp:Label>
        <asp:DropDownList runat="server" CssClass="form-control col-4" ID="ddlstate">
            <asp:ListItem>Please choose your state</asp:ListItem>
            <asp:ListItem>New South Wales</asp:ListItem>
            <asp:ListItem>Victoria</asp:ListItem>
            <asp:ListItem>Queensland</asp:ListItem>
            <asp:ListItem>Northern Territory</asp:ListItem>
            <asp:ListItem>Western Australia</asp:ListItem>
            <asp:ListItem>South Australia</asp:ListItem>
            <asp:ListItem>Tasmania</asp:ListItem>
            <asp:ListItem>Australian Capital Territory</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator Display="dynamic" CssClass="valstyle" ID="rfvstate"
            runat="server" ControlToValidate="ddlstate"
            ErrorMessage="Please choose a State"
            InitialValue="Please choose your state">
        </asp:RequiredFieldValidator>
    </div>

<!--obtain the user phone number with validation for account creation-->
    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" Text="Phone Number" ID="lblphonenumber"></asp:Label>
        <asp:TextBox runat="server" CssClass="form-control col-4" ID="txtbxphonenumber" MaxLength="10" />
        <asp:RequiredFieldValidator ID="rfvphonenumber" CssClass="valstyle" Display="Dynamic"
            runat="server" ControlToValidate="txtbxphonenumber"
            ErrorMessage="Please enter your Phone Number"> 
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regexphonenumber" runat="server"
            ErrorMessage="Phone Number contains only numbers" Display="Dynamic"
            ValidationExpression="^\d+$" ControlToValidate="txtbxphonenumber">
        </asp:RegularExpressionValidator>
    </div>

<!--obtain the user email address with validation for account creation-->
    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" ID="lblemail" Text="Email Address"></asp:Label>
        <asp:TextBox runat="server" CssClass="form-control col-4" ID="txtbxemail" MaxLength="96" />
        <asp:RequiredFieldValidator ID="rfvemail" CssClass="valstyle" Display="Dynamic"
            runat="server" ControlToValidate="txtbxemail"
            ErrorMessage="Please enter your email address"> 
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regexemail" runat="server" ControlToValidate="txtbxemail"
            ErrorMessage="Email address is invalid" Display="Dynamic"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
        </asp:RegularExpressionValidator>
    </div>

<!--confirm user email by asking for re-entry of first input -->
    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" ID="lblconfirmemail" Text="Confirm Email Address"></asp:Label>
        <asp:TextBox runat="server" CssClass="form-control col-4" ID="txtbxconfirmemail" MaxLength="96" />
        <asp:CompareValidator ID="cvconfirmemail" CssClass="valstyle" Display="Dynamic"
            runat="server" ErrorMessage="Emails do not match" ControlToValidate="txtbxemail"
            Operator="Equal" ControlToCompare="txtbxconfirmemail">
        </asp:CompareValidator>
    </div>

<!--Set the account password with data verification-->
    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" ID="lblpassword" Text="Password*"></asp:Label>
        <asp:TextBox runat="server" CssClass="form-control col-4" type="password" ID="txtbxpassword" autocomplete="off" />
        <asp:RequiredFieldValidator ID="rfvpassword" CssClass="valstyle" Display="Dynamic"
            runat="server" ControlToValidate="txtbxpassword"
            ErrorMessage="Please enter a password"> 
        </asp:RequiredFieldValidator>
    </div>

<!--ask for password re-entry to validate the correct password-->
    <div class="form-group row">
        <asp:Label runat="server" CssClass="col-2 col-form-label label" ID="lblconfirmpassword" Text="Confirm Password"></asp:Label>
        <asp:TextBox runat="server" CssClass="form-control col-4" type="password" ID="txtbxconfirmpassword" MaxLength="40" autocomplete="off" />
        <asp:CompareValidator ID="cmconfirmpassword" CssClass="valstyle" Display="Dynamic"
            runat="server" ErrorMessage="Passwords do not match" ControlToValidate="txtbxpassword"
            Operator="Equal" ControlToCompare="txtbxconfirmpassword">
        </asp:CompareValidator>
    </div>

<!--Password length reminder-->
    <div class="form-group row">
        <label class="col-md-2 control-col-2 col-form-label label"></label>
        <div class="col-md-6">* Password must be at least 8 characters long</div>
    </div>

    <div class="col-md-11"></div>

<!--Register button-->
    <asp:Button runat="server" CssClass="btn btn-outline-warning" ID="RegisterButton" OnClick="BtnRegister_Click" Text="Register"></asp:Button>
        </asp:Panel>
</asp:Content>
