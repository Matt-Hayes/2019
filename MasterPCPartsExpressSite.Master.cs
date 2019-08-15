using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PCPPartsExpress
{
    public partial class MasterPCPartsExpressSite : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["id"] == null);
            {
                btnShoppingCart.NavigateUrl = "~/User_Layer/login.aspx";
            }
            if((string)Session["id"] != null)
            {
                btnLogin.Text = (string)Session["id"];
                btnLogin.NavigateUrl = "~/User_Layer/Account.aspx";
                btnRegister.Text = "Logout";
                btnRegister.NavigateUrl = "~/User_Layer/Logout.aspx";
                btnShoppingCart.NavigateUrl = "~/User_Layer/ShoppingCart.aspx";
            }
            else if((string)Session["idAdmin"] != null)
            {
                btnLogin.Text = (string)Session["idAdmin"];
                btnLogin.NavigateUrl = "~/User_Layer/AdminMain.aspx";
                btnRegister.Text = "Logout";
                btnRegister.NavigateUrl = "~/User_Layer/Logout.aspx";
                btnShoppingCart.Visible = false;
            }
        }
        protected void CasesCategory_Click(object sender, EventArgs e)
        {
            Session["ProductCat"] = "Case";
            Response.Redirect("ProductListPage.aspx");
        }
        protected void CoolingCategory_Click(object sender, EventArgs e)
        {
            Session["ProductCat"] = "Cooler";
            Response.Redirect("ProductListPage.aspx");
        }
        protected void CPUCategory_Click(object sender, EventArgs e)
        {
            Session["ProductCat"] = "CPU";
            Response.Redirect("ProductListPage.aspx");
        }
        protected void GPUCategory_Click(object sender, EventArgs e)
        {
            Session["ProductCat"] = "GPU";
            Response.Redirect("ProductListPage.aspx");
        }
        protected void KeyboardCategory_Click(object sender, EventArgs e)
        {
            Session["ProductCat"] = "Keyboards";
            Response.Redirect("ProductListPage.aspx");
        }
        protected void StorageCategory_Click(object sender, EventArgs e)
        {
            Session["ProductCat"] = "Storage";
            Response.Redirect("ProductListPage.aspx");
        }
        protected void MemoryCategory_Click(object sender, EventArgs e)
        {
            Session["ProductCat"] = "Memory";
            Response.Redirect("ProductListPage.aspx");
        }
        protected void MonitorCategory_Click(object sender, EventArgs e)
        {
            Session["ProductCat"] = "Monitor";
            Response.Redirect("ProductListPage.aspx");
        }
        protected void MotherBoardCategory_Click(object sender, EventArgs e)
        {
            Session["ProductCat"] = "Motherboard";
            Response.Redirect("ProductListPage.aspx");
        }
        protected void MouseCategory_Click(object sender, EventArgs e)
        {
            Session["ProductCat"] = "Mice";
            Response.Redirect("ProductListPage.aspx");
        }
        protected void PSUCategory_Click(object sender, EventArgs e)
        {
            Session["ProductCat"] = "PSU";
            Response.Redirect("ProductListPage.aspx");
        }
        protected void searchButton_Click(object sender, EventArgs e)
        {
            if (searchBar.Text != "")
            {
                Session["SearchQuery"] = searchBar.Text;
                Response.Redirect("SearchResults.aspx");
            }
        }
    }
    
}