<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPCPartsExpressSite.Master" AutoEventWireup="true" CodeBehind="~/Business_Layer/ForgotPassword.aspx.cs" Inherits="PCPPartsExpress.User_Layer.ForgotPassword" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Breadcrumb to aid site navigation -->
      <div>
        <ul class="breadcrumb">
            <li><a href="Default.aspx">Home -></a></li>
            <li><a href="Login.aspx">Login -></a></li>
            <li class="active">Forgot Password</li>
        </ul>
    </div>

<!-------------------------------------------------------------------->
<!--About page to display frogot password form of PC Parts Express---->
<!-------------------------------------------------------------------->

    <!--Look up user account and send reset password email-->
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

        <asp:Button runat="server" CssClass="btn btn-outline-warning" ID="forgotEmail" OnClick="BtnForgotEmail_Click" Text="Send Email"></asp:Button>
    <br />
    <asp:Label runat="server" ID="forgotLabel" CssClass="label"></asp:Label>
</asp:Content>
