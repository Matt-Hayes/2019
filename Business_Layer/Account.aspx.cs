using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PCPPartsExpress.Business_Layer;
using PCPPartsExpress.Data_Access_Layer;

namespace PCPPartsExpress
{
    public partial class Account : System.Web.UI.Page
    {
        //user account details on page load
        protected void Page_Load(object sender, EventArgs e)
        {
            //load user account details
            GETSET objuseraccount = new GETSET();
           objuseraccount.EmailAddressGetSet = (string)(Session["id"]);
            BL2 getUserDetails = new BL2();
            getUserDetails.UserDetails(objuseraccount);

            //Display user account details
            lblAccfName.Text = objuseraccount.FirstNameGetSet;
            lblAcclName.Text = objuseraccount.LastNameGetSet;
            lblAccAddress.Text = objuseraccount.StreetAddressGetSet;
            lblAccPhoneNumber.Text = objuseraccount.PhoneNumberGetSet;
            lblAccEmail.Text = objuseraccount.EmailAddressGetSet;
            lblAccName2.Text = objuseraccount.FirstNameGetSet + " " + objuseraccount.LastNameGetSet;
        }
        
        //Display text boxes to edit user details
        protected void Editpage_Click(object sender, EventArgs e)
        {
            txtAccfName.Visible = true;
            txtAccfName.Text = lblAccfName.Text;
            lblAccfName.Visible = false;

            txtAcclName.Visible = true;
            txtAcclName.Text = lblAcclName.Text;
            lblAcclName.Visible = false;

            txtAccAddress.Visible = true;
            txtAccAddress.Text = lblAccAddress.Text;
            lblAccAddress.Visible = false;

            txtAccPhoneNumber.Visible = true;
            txtAccPhoneNumber.Text = lblAccPhoneNumber.Text;
            lblAccPhoneNumber.Visible = false;

            EditDetailsbtn.Visible = false;
            EditConfirmbtn.Visible = true;
        }

        //Hide edit functions and save user details to db
        protected void EditConfirm_Click(object sender, EventArgs e)
        {
            //hide edit functions
            txtAccfName.Visible = false;
            lblAccfName.Visible = true;
            txtAcclName.Visible = false;
            lblAcclName.Visible = true;
            txtAccAddress.Visible = false;
            lblAccAddress.Visible = true;
            txtAccPhoneNumber.Visible = false;
            lblAccPhoneNumber.Visible = true;
            EditDetailsbtn.Visible = true;
            EditConfirmbtn.Visible = false;

            //update database details
            GETSET objuseraccount = new GETSET();
            objuseraccount.FirstNameGetSet = txtAccfName.Text;
            objuseraccount.LastNameGetSet = txtAcclName.Text;
            objuseraccount.StreetAddressGetSet = txtAccAddress.Text;
            objuseraccount.PhoneNumberGetSet = txtAccPhoneNumber.Text;
            objuseraccount.EmailAddressGetSet = (string)(Session["id"]);

            BL2 changeUserDetails = new BL2();
            changeUserDetails.UserRegistration(objuseraccount);
            Response.Redirect("Account.aspx");
        }
    }
}