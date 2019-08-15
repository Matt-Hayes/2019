using PCPPartsExpress.Business_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PCPPartsExpress
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            string Output = string.Empty;
            if (Page.IsValid)
            {
                GETSET objuserBusinesslayer = new GETSET();

                objuserBusinesslayer.FirstNameGetSet = txtbxfirstname.Text;
                objuserBusinesslayer.LastNameGetSet = txtbxlastname.Text;
                objuserBusinesslayer.FirstNameGetSet = txtbxfirstname.Text;
                objuserBusinesslayer.LastNameGetSet = txtbxlastname.Text;
                objuserBusinesslayer.SuburbsGetSet = txtbxsuburb.Text;
                objuserBusinesslayer.StateGetSet = ddlstate.Text;
                objuserBusinesslayer.PostcodeGetSet = txtbxpostcode.Text;
                objuserBusinesslayer.PhoneNumberGetSet = txtbxphonenumber.Text;
                objuserBusinesslayer.EmailAddressGetSet = txtbxemail.Text;
                objuserBusinesslayer.PasswordGetSet = txtbxpassword.Text;
                BL2 objuserBl2 = new BL2();
                Output = objuserBl2.InsertUserDetails(objuserBusinesslayer);
                Session["id"] = txtbxemail.Text;
                Response.Redirect("Account.aspx");

            }


        }
    }
}