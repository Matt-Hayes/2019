using PCPPartsExpress.Business_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PCPPartsExpress.User_Layer
{
    public partial class AddItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            string Output = string.Empty;

            //Once new item details are filled in a client side verified add verified data to database
            if (Page.IsValid)
            {
                GETSET objuserBusinesslayer = new GETSET();

                //get data from user layer
                objuserBusinesslayer.ProductNameGetSet = txtbxproductname.Text;
                objuserBusinesslayer.CategoryGetSet = ddlcategory.Text;
                objuserBusinesslayer.ModelGetSet = txtbxmodel.Text;
                objuserBusinesslayer.ManufacturerGetSet = txtbxmanufacturer.Text;
                objuserBusinesslayer.PriceGetSet = Convert.ToInt32(txtbxprice.Text);
                objuserBusinesslayer.StockcountGetSet = Convert.ToInt32(txtbxstock.Text);
                objuserBusinesslayer.DescriptionGetSet = txtbxdescription.Text;
                objuserBusinesslayer.ReleaseDateGetSet = DateTime.Now;

                //save data to database
                BL2 objuserBl2 = new BL2();
                Output = objuserBl2.InsertNewProduct(objuserBusinesslayer);
                lblconfirmation.Visible = true;

                //reset data for new item entry
                txtbxproductname.Text = "";
                ddlcategory.SelectedIndex = 0;
                txtbxmodel.Text = "";
                txtbxmanufacturer.Text = "";
                txtbxprice.Text = "";
                txtbxstock.Text="";
                txtbxdescription.Text= "";

            }


        }
    }
}