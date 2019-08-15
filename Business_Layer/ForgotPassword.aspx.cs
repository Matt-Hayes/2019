using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PCPPartsExpress.User_Layer
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //forgot password email notification
        protected void BtnForgotEmail_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                forgotLabel.Text = "An email has been sent to this address with instructions on how to reset your password";
            }

        }
    }
}