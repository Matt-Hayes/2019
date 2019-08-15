using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PCPPartsExpress.Business_Layer;

namespace PCPPartsExpress.User_Layer
{
    public partial class ProductDetail : System.Web.UI.Page
    {
        //on product page load read data and fill out template to display data
        protected void Page_Load(object sender, EventArgs e)
        {
            //obtain product details
            GETSET productdetails = new GETSET();
            productdetails.IDGetSet = (string)Session["productdetails"];
            BL2 getProduct = new BL2();
            getProduct.ProductDetails(productdetails);

            string category = productdetails.CategoryGetSet;

            //apply product details to user layer display
            lblProductName.Text = productdetails.ProductNameGetSet;
            lblPrice.Text = Convert.ToString(productdetails.PriceGetSet);
            int stock = productdetails.StockcountGetSet;
            lblStock2.Text = Convert.ToString(productdetails.StockcountGetSet);
            lblDescription.Text = productdetails.DescriptionGetSet;
            lblManufacturer.Text = productdetails.ManufacturerGetSet;
            lblModel.Text = productdetails.ModelGetSet;
            lblReleaseDate.Text = productdetails.ReleaseDateGetSet.ToString();

            //test if stock is avaliable and display avaliable or unavaliable and grey out button
            if (stock > 0)
            {
                lblStock.Text = "In Stock";
            }
            else
            {
                lblStock.Text = "Out of Stock";
                AddToCartBtn.Enabled = false;
            }

            //set bread crumb title for the items category 
            catref.Text = " " + category + " -> ";
            breadcrumref.Text = lblProductName.Text;

            //set visibility of edit item detials
            if ((string)Session["idAdmin"] != null)
            {
                btnEditPage.Visible = true;
            }
        }

            //
            protected void btnEditPage_Click(object sender, EventArgs e)
            {
                    lblProductName.Visible = false;
                    lblPrice.Visible = false;
                    lblDescription.Visible = false;
                    lblManufacturer.Visible = false;
                    lblModel.Visible = false;
                    lblReleaseDate.Visible = false;

                    txtbxProductName.Visible = true;
                    txtbxPrice.Visible = true;
                    txtbxStock.Visible = true;
                    txtbxDescription.Visible = true;
                    txtbxManufacturer.Visible = true;
                    txtbxModel.Visible = true;
                    txtbxReleaseDate.Visible = true;
                    btnSave.Visible = true;

                    txtbxProductName.Text = lblProductName.Text;
                    txtbxPrice.Text = lblPrice.Text;
                    txtbxStock.Text = lblStock2.Text;
                    txtbxDescription.Text = lblDescription.Text;
                    txtbxManufacturer.Text = lblManufacturer.Text;
                    txtbxModel.Text = lblModel.Text;
                    txtbxReleaseDate.Text = lblReleaseDate.Text;

                    btnEditPage.Visible = false;
            }
        
            

        protected void btnSave_Click(object sender, EventArgs e)
        {
            GETSET SetNewDetails = new GETSET();
            SetNewDetails.IDGetSet = (string)Session["productdetails"];
            SetNewDetails.ProductNameGetSet = txtbxProductName.Text;
            SetNewDetails.PriceGetSet = Convert.ToInt32(txtbxPrice.Text);
            SetNewDetails.StockcountGetSet = Convert.ToInt32(txtbxStock.Text);
            SetNewDetails.DescriptionGetSet = txtbxDescription.Text;
            SetNewDetails.ManufacturerGetSet = txtbxManufacturer.Text;
            SetNewDetails.ModelGetSet = txtbxModel.Text;
            SetNewDetails.ReleaseDateGetSet = Convert.ToDateTime(txtbxReleaseDate.Text);

        
            BL2 objectPass = new BL2();
            objectPass.UpdateProductDetails(SetNewDetails);

            btnEditPage.Visible = true;

            btnSave.Visible = true;
            lblProductName.Visible = true;
            lblPrice.Visible = true;
            lblDescription.Visible = true;
            lblManufacturer.Visible = true;
            lblModel.Visible = true;
            lblReleaseDate.Visible = true;

            txtbxProductName.Visible = false;
            txtbxPrice.Visible = false;
            txtbxStock.Visible = false;
            txtbxDescription.Visible = false;
            txtbxManufacturer.Visible = false;
            txtbxModel.Visible = false;
            txtbxReleaseDate.Visible = false;
            btnSave.Visible = false;

            Response.Redirect("ProductDetail.aspx");
        }
    }
}