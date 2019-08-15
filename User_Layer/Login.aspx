<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPCPartsExpressSite.Master" AutoEventWireup="true" CodeBehind="~/Business_Layer/Login.aspx.cs" Inherits="PCPPartsExpress.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!------------------------------------------------------->
<!----Code to display login and sign up page details----->
<!------------------------------------------------------->
      <div>
        <ul class="breadcrumb">
            <li><a href="Default.aspx">Home -></a></li>
            <li class="active">Login</li>
        </ul>
    </div>

    <!-- Create new Account -->
    <fieldset>
        <div class="row">
            <div class="col-lg-6">
                <h5>Register</h5>
                <div class="form-group">
                    <%--<h4>New Customers</h4>--%>
                    <label>By creating an account with our store, you will be able to order through our checkout, take advantage of multiple shipping options, view and track your orders in your account and more. </label>
                            <asp:Button runat="server" CssClass="btn btn-outline-warning" ID="SignUpBtn" OnClick="BtnSignUp_Click" Text="Sign Up"></asp:Button>
                </div>
            </div>

            <!-- Sign In Procedure-->
            <div class="col-lg-6">
                <h5>Sign In</h5>
                <div class="form-group">
                    <h4>Registered Customers please log in below</h4>
                    <asp:Panel ID="LoginPanel" runat="server" DefaultButton="loginBtn">
                        <div class="p-r-20">
                            <div class="form-group">
                                <asp:label runat="server" ID="loginemailaddress" class="t-d-blue"><strong>Email Address:</strong></asp:label>
                                    <asp:TextBox runat="server" ID="txtemailaddress" maxlength="96" Cssclass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvemail" CssClass="valstyle" Display="Dynamic"
                                    runat="server" ControlToValidate="txtemailaddress"
                                    ErrorMessage="Please enter your email address"> 
                                </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="regexemail" runat="server" ControlToValidate="txtemailaddress"
                                    ErrorMessage="Email address is invalid" Display="Dynamic"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                </asp:RegularExpressionValidator>
                            </div>

                            <div class="form-group m-b-30 ">
                                <asp:label runat="server" ID="loginpassword" class="t-d-blue"><strong>Password:</strong> </asp:label>
                                    <asp:Textbox runat="server" maxlength="40" TextMode="Password" ID="passwordLogin" Cssclass="form-control"></asp:Textbox>
                            </div>
                            <asp:Label  runat="server" id ="lblError" Text=""></asp:Label>
                        <!-- Verification -->
                        <div class="m-b-30">
                            <asp:Button runat="server" CssClass="btn btn-outline-warning" ID="loginBtn" OnClick="BtnLogin_Click" Text="Login"></asp:Button>
                            <div style="width: 260px; padding-top: 5px;">
                                <a href="ForgotPassword.aspx" class="t-d-blue m-b-30 f-12">Forgot Your Password?</a>
                            </div>
                        </div>
                    </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </fieldset>



</asp:Content>
