<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPCPartsExpressSite.Master" AutoEventWireup="true" CodeBehind="~/Business_Layer/ProductListPage.aspx.cs" Inherits="PCPPartsExpress.User_Layer.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!----------------------------------------------->
<!-----Code to display Product list page------>
<!----------------------------------------------->

        <!-- Breadcrumb to aid site navigation -->
    <div>
        <ul class="breadcrumb">
            <li><a href="Default.aspx">Home -> </a></li>
            <li class="active"><asp:label runat="server" ID="breadcrumref"></asp:label></li>

        </ul>
    </div>

    <!-- Displays list of items based on the item category -->
    <div>
        <asp:ListView ID="ListView1" runat="server" Class="ListViewCSS" OnItemCommand="Productlistview_OnCommand">          
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <img id="img" src="../IMG/PCExample.jpg" runat="server" style="width: 150px; height: 150px;" />
                    </td>
                    <td>
                        <asp:Label ID="productID" runat="server" Text='<%# Eval("productID") %>' Visible="false"/>
                        <asp:LinkButton ID="productLabel" runat ="server" CommandName="ToDetailPage" Text='<%# Eval("productName") %>'/><br /><hr />
                        <asp:Label ID="descriptionLabel" runat="server" text='<%# Eval("description") %>'/>
                    </td>
                    <td>
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>'/><br />
                        <asp:LinkButton ID="AddToCartBtn" runat="server" Text="Add to cart"  CommandName="addtocart" CommandArgument='<%# Container.DataItemIndex %>'/>
                     </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="width: 100%">
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
    </div>
</asp:Content>
