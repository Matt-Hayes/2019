<%@ Page Title="PC Parts Express" Language="C#" MasterPageFile="~/MasterPCPartsExpressSite.Master" AutoEventWireup="true" CodeBehind="~/Business_Layer/Default.aspx.cs" Inherits="PCPPartsExpress.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!---------------------------------------------------------------->
<!----Code to display the Defaul home page of PC Parts Express---->
<!---------------------------------------------------------------->


    <h2><%: Title %></h2>
    <h3>The fastest delivery of PC parts and accessories in Australia.</h3>
    <h6 style="color: darkorange">Newest Items</h6>

    <!--Display the most recently added items with list view-->
 <asp:ListView ID="ListView1" runat="server" Class="ListViewCSS">   
     
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <img src="../IMG/PCExample.jpg" runat="server" style="width: 150px; height: 150px;" />
                    </td>
                    <td>
                        <asp:Label ID="productLabel" runat ="server" Text='<%# Eval("productName") %>'/><br /><hr />
                        <asp:Label ID="descriptionLabel" runat="server" text='<%# Eval("description") %>'/>
                    </td>
                    <td>
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>'/><br />
                        <asp:Button ID="AddToCartBtn" runat="server" Text="Add to cart" />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="width: 90%">
                                <tr id="itemPlaceholder" runat="server" >
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
</asp:Content>

