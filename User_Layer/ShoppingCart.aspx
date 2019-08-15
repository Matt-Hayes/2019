<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPCPartsExpressSite.Master" AutoEventWireup="true" CodeBehind="~/Business_Layer/ShoppingCart.aspx.cs" Inherits="PCPPartsExpress.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
<!------------------------------------------->
<!----Code to display Shopping card page----->
<!------------------------------------------->
          <div>
        <ul class="breadcrumb">
            <li><a href="Default.aspx">Home -></a></li>
            <li class="active">Shopping Cart</li>
        </ul>
    </div>

    <!--Display Shopping cart information -->
    <div class="container">
        <div class="row">
            </div>
              <asp:Table runat="server" CssClass="tablestyle" Width="700px">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>My Cart</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Price</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Qty</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Total</asp:TableHeaderCell>
                </asp:TableHeaderRow>

                <asp:TableRow>
                    <asp:TableCell ID ="blah"></asp:TableCell>
                    <asp:TableCell>$200.00</asp:TableCell>
                    <asp:TableCell>1</asp:TableCell>
                    <asp:TableCell>$200.00</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        <div>

        </div>
            <div class="row" style="margin-top:15px">
                <div class="col-lg-3"></div>
                <div class="col-lg-6">
                    <div class="card border-warning mb-3" style="max-width: 20rem;">
                            <div class="card-body">
                            <h6 class="card-title">Subtotal: $200.00</h6>
                            <h6 class="card-title">Shipping: $0<br /> <br /> Vines, NSW, 2498</h6>
                            <h6 class="card-title">Total: $200.00</h6>
                                <hr />
                                <ul class="nav nav-pills">
                                    <li class="nav-item navsize"><a class="nav-link active" runat="server" href="~/User_Layer/Payment.aspx">Checkout</a></li>
                                </ul>
                          </div>
                    </div>
                </div>
            </div>
    </div>

</asp:Content>
