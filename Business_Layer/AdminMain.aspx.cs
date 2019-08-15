using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using PCPPartsExpress.Business_Layer;

namespace PCPPartsExpress
{
    public partial class AdminMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Retrieve admin user details
            GETSET objuseraccount = new GETSET();
            objuseraccount.EmailAddressGetSet = (string)(Session["idAdmin"]);
            BL2 details = new BL2();
            details.AdminDetails(objuseraccount);

            //Display User Details
            lblAccName.Text = objuseraccount.FirstNameGetSet + " " + objuseraccount.LastNameGetSet;
            lblAccEmail.Text = objuseraccount.EmailAddressGetSet;
        }

        //buton to direct admins to add item page
        protected void BtnAdminAddInventory_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddItem.aspx");
        }

        //buton to direct admins to edit item page, default page
        protected void BtnAdminViewSupport_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        //buton to direct admins to edit user account details
        protected void BtnAdminViewUserAccounts_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserAccounts.aspx");
        }
    }
}