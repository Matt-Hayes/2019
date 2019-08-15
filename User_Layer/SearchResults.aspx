<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPCPartsExpressSite.Master" AutoEventWireup="true" CodeBehind="~/Business_Layer/SearchResults.aspx.cs" Inherits="PCPPartsExpress.SearchResults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!-------------------------------------------->
<!----Code to display search results page----->
<!-------------------------------------------->

          <div>
        <ul class="breadcrumb">
            <li><a href="Default.aspx">Home -></a></li>
            <li class="active">Search Results for</li>
        </ul>
    </div>

    <div class="container">
         <!--List of items to display in search result-->
        <asp:Label runat="server" ID="searchQuery"></asp:Label>
    </div>

</asp:Content>
