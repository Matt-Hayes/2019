using PCPPartsExpress.Business_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace PCPPartsExpress
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Button event takes the users email and password and compares it to current session registration//

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            //login to site redirection and validation test
            if (Page.IsValid)
            {
                //taking user input details and comapairing it with the data stored in database
                string Output = string.Empty;
                GETSET objuserBusinesslayer = new GETSET();
                objuserBusinesslayer.EmailAddressGetSet = txtemailaddress.Text;
                objuserBusinesslayer.PasswordGetSet = passwordLogin.Text;
                BL2 objuserBl2 = new BL2();
                Output = objuserBl2.CheckAccountDetails(objuserBusinesslayer);

                //returned strings are checked for customer or admin to redirect specific logins and set session variables
                if (string.Compare(Output, "correctc") == 0)
                {
                    Session["id"] = txtemailaddress.Text;
                    Response.Redirect("~/User_Layer/Account.aspx");
                }

                if (string.Compare(Output, "correcta") == 0)
                {
                    Session["idAdmin"] = txtemailaddress.Text;
                    Response.Redirect("~/User_Layer/AdminMain.aspx");
                }

                else
                {
                    lblError.Text = "Incorrect Email or Password";

                }
            }
        }

            //button that redirects users to sign up page
            protected void BtnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}