using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using PCPPartsExpress.Business_Layer;

namespace PCPPartsExpress.User_Layer
{
    public partial class UserAccounts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BL2 UserAcc = new BL2();
            DataSet UserAccounts = UserAcc.Useraccountget();
            if(UserAccounts.Tables.Count > 0)
            {
                GridView1.DataSource = UserAccounts;
                GridView1.DataBind();
            }
        }
    }
}