using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PCPPartsExpress
{
    public partial class SearchResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            searchQuery.Text =Convert.ToString(Session["SearchQuery"]);
        }
        protected void BtnCheckOut_Click(object sender, EventArgs e)
        {

        }
    }
}