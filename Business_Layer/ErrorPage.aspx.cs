using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PCPPartsExpress.User_Layer
{
    public partial class Error : System.Web.UI.Page
    {
        //Page load for error detection, display thrown exception
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Text = (string)Session["ErrorMessage"];
        }

        //Return home button
        protected void BtnLogouthome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User_Layer/Default.aspx");

        }
    }
}