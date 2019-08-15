using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PCPPartsExpress.Business_Layer;
using System.Data;

namespace PCPPartsExpress
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Display items on default page displaying newest 25 items
            BL2 Items = new BL2();
            DataSet Productds = Items.View();
            if (Productds.Tables.Count > 0)
            {
                ListView1.DataSource = Productds;
                ListView1.DataBind();
            }
        }
        //add to cart button for products in list
        protected void BtnCheckOut_Click(object sender, EventArgs e)
        {
            {
                Response.Redirect("ShoppingCart.aspx");
            }
        }
    }
}