using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PCPPartsExpress;

namespace PCPPartsExpress
{
    public partial class Logout : System.Web.UI.Page
    {
        //logout page session clear
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
        }

        //redirect to login page on click if relog is desired
        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User_Layer/Login.aspx");
        }

        //redirect to home if desired on logout
        protected void BtnLogouthome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User_Layer/Default.aspx");

        }
    }
}