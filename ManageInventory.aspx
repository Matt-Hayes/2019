<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPCPartsExpressAdmin.Master" AutoEventWireup="true" CodeBehind="ManageInventory.aspx.cs" Inherits="PCPPartsExpress.ManageInventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!------------------------------------------->
<!----Code to display Shopping card page----->
<!------------------------------------------->

    <div class="container">
         <!--List of items to display in search result-->
        <ul class="list-group">
           
             <!--Example of searched item-->
            <li class="list-group-item" id="PCBuilt">
                <div class="form-group row">
                    <div class="col-sm-3">
                        <img src="Images/PCExample.jpg" runat="server" style="width: 150px; height: 150px;" />
                    </div>
                    <div class="col-sm-7">
                        <h6>Pretty Sweet built PC</h6>
                        <p>
                            AMD Ryzen 3 2200G with Wraith Stealth cooler, ASUS Prime A320M-K Motherboard, ASUS GeForce GTX 1050 Phoenix 2GB graphics card, 8GB Team T-Force memory, 
                    Kingston SSDNow A400 240GB SSD, Seagate Barracuda 1TB hard drive, Fractal Design Focus case, Windows 10. Backed by a 2 year return to base warranty with all shipping costs included.
                        </p>
                    </div>
                    <div class="col-sm-2">
                        $2000
                   <asp:Button runat="server" Text="Add to cart" OnClick="BtnCheckOut_Click" />
                        <asp:Label runat="server" Text="Not in Stock"></asp:Label>
                    </div>
                </div>
            </li>
            
        </ul>
    </div>

</asp:Content>