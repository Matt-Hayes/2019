using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using PCPPartsExpress.Business_Layer;
using System.Data;
using System.Web.UI.HtmlControls;

namespace PCPPartsExpress.User_Layer
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cat = (string)Session["ProductCat"];
            breadcrumref.Text = cat;
            BL2 blah = new BL2();
            DataSet Productds = blah.View2(cat);
            if (Productds.Tables.Count > 0)
            {
                ListView1.DataSource = Productds;
                ListView1.DataBind();
            }
        }



        protected void Productlistview_OnCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "ToDetailPage")
            {
                Label lblsess = (Label)e.Item.FindControl("ProductID");
                Session["productdetails"] = lblsess.Text;
                Response.Redirect("ProductDetail.aspx");
            }
            if (e.CommandName == "AddToCartBtn")
            {
                Label lblproductname = (Label)e.Item.FindControl("productLabel");

            }
        }



    }
}   