using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.ComponentModel.DataAnnotations;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using PCPPartsExpress.Business_Layer;
using System.Web.Configuration;
using System.Threading;
using System.Data.Common;

namespace PCPPartsExpress.Data_Access_Layer
{
    public class DAL
    {
        public string AddRegistration(GETSET objuserbusinessLayer)
        {
            using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["PCPARTSEXPRESSDB"].ConnectionString))
            {
                SqlCommand adduserCommand = new SqlCommand("INSERT INTO [dbo].[Customer] (CustomerEmailAddress, firstName, lastName, [CustomerPassword], Address, contactNo) VALUES(@emailAddress, @firstname, @lastname, @password, @Address, @contactNo)", connection);
                connection.Open();
                adduserCommand.Parameters.AddWithValue("@emailAddress", objuserbusinessLayer.EmailAddressGetSet);
                adduserCommand.Parameters.AddWithValue("@firstname", objuserbusinessLayer.FirstNameGetSet);
                adduserCommand.Parameters.AddWithValue("@lastname", objuserbusinessLayer.LastNameGetSet);
                adduserCommand.Parameters.AddWithValue("@password", objuserbusinessLayer.PasswordGetSet);
                adduserCommand.Parameters.AddWithValue("@Address", objuserbusinessLayer.StreetAddressGetSet + " " + objuserbusinessLayer.SuburbsGetSet + " " + objuserbusinessLayer.StateGetSet);
                adduserCommand.Parameters.AddWithValue("@contactNo", objuserbusinessLayer.PhoneNumberGetSet);
                adduserCommand.ExecuteNonQuery();
            }
            return "";
        }

        public string AddNewProduct(GETSET objUserBusinessLayer)
        {
            using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["PCPARTSEXPRESSDB"].ConnectionString))
            {

                SqlCommand NewProducts = new SqlCommand("insert into products(categoryName, productName, model, manufacturer, price, stockcount, description, releaseDate) values(@categoryName, @productName, @model, @manufacturer, @price, @stockcount, @description, @releaseDate)", connection);
                NewProducts.Parameters.AddWithValue("@categoryName", objUserBusinessLayer.CategoryGetSet);
                NewProducts.Parameters.AddWithValue("@productName", objUserBusinessLayer.ProductNameGetSet);
                NewProducts.Parameters.AddWithValue("@model", objUserBusinessLayer.ModelGetSet);
                NewProducts.Parameters.AddWithValue("@manufacturer", objUserBusinessLayer.ManufacturerGetSet);
                NewProducts.Parameters.AddWithValue("@price", objUserBusinessLayer.PriceGetSet);
                NewProducts.Parameters.AddWithValue("@stockcount", objUserBusinessLayer.StockcountGetSet);
                NewProducts.Parameters.AddWithValue("@description", objUserBusinessLayer.DescriptionGetSet);
                NewProducts.Parameters.AddWithValue("@releaseDate", objUserBusinessLayer.ReleaseDateGetSet);
                connection.Open();
                NewProducts.ExecuteNonQuery();
            }
            return "";
        }

        public string CheckAccountCustomer(GETSET objuserbusinessLayer)
        {
            using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["PCPARTSEXPRESSDB"].ConnectionString))
            {

                SqlCommand CheckaccountSDA = new SqlCommand("Select CustomerEmailAddress, CustomerPassword from Customer where (CustomerEmailAddress=@email and CustomerPassword=@password)", connection);
                CheckaccountSDA.Parameters.AddWithValue("@email", objuserbusinessLayer.EmailAddressGetSet);
                CheckaccountSDA.Parameters.AddWithValue("@password", objuserbusinessLayer.PasswordGetSet);
                SqlDataAdapter SDA = new SqlDataAdapter(CheckaccountSDA);
                DataTable dt = new DataTable();
                SDA.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    return "correctc";
                }
                else
                {
                    return null;
                }

            }

        }

        public DataSet Useraccountget()
        {
            using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["PCPARTSEXPRESSDB"].ConnectionString))
            {

                SqlCommand GetAccount = new SqlCommand("Select CustomerEmailAddress, firstName, lastName, address, contactNo from Customer", connection);
                connection.Open();
                SqlDataAdapter da = new SqlDataAdapter(GetAccount);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }

        }

        public DataSet FetchView()
        {
            using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["PCPARTSEXPRESSDB"].ConnectionString))
            {

                SqlCommand GetProducts = new SqlCommand("Select productID, productName, model, manufacturer, price, stockcount, description from Products", connection);
                connection.Open();
                SqlDataAdapter da = new SqlDataAdapter(GetProducts);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }

        }

        public DataSet FetchViewCat(string cat)
        {
            using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["PCPARTSEXPRESSDB"].ConnectionString))
            {

                SqlCommand GetProducts = new SqlCommand("Select productID, productName, model, manufacturer, price, stockcount, description from Products where categoryName = @cat", connection);
                connection.Open();
                GetProducts.Parameters.AddWithValue("@cat", cat);
                SqlDataAdapter da = new SqlDataAdapter(GetProducts);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }

        }

        public string CheckAccountAdmin(GETSET objuserbusinessLayer)
        {
            using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["PCPARTSEXPRESSDB"].ConnectionString))
            {

                SqlCommand CheckaccountSDA = new SqlCommand("Select AdminEmailAddress, AdminPassword from Admin where AdminEmailAddress=@email and AdminPassword=@password", connection);
                CheckaccountSDA.Parameters.AddWithValue("@email", objuserbusinessLayer.EmailAddressGetSet);
                CheckaccountSDA.Parameters.AddWithValue("@password", objuserbusinessLayer.PasswordGetSet);
                SqlDataAdapter SDA = new SqlDataAdapter(CheckaccountSDA);
                DataTable dt = new DataTable();
                SDA.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    return "correcta";
                }
                else
                {
                    return "";
                }

            }

        }

        public object FetchProductDetails(GETSET objUserBusinessLayer)
        {
            using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["PCPARTSEXPRESSDB"].ConnectionString))
            {

                SqlCommand GetProducts = new SqlCommand("Select productID, categoryName, productName, model, manufacturer, price, stockcount, description, releaseDate from Products where productID = @id", connection);
                GetProducts.Parameters.AddWithValue("@id", objUserBusinessLayer.IDGetSet);
                connection.Open();
                SqlDataReader dr = GetProducts.ExecuteReader();

                while (dr.Read())
                {
                    objUserBusinessLayer.IDGetSet = dr[0].ToString();
                    objUserBusinessLayer.CategoryGetSet = dr[1].ToString();
                    objUserBusinessLayer.ProductNameGetSet = dr[2].ToString();
                    objUserBusinessLayer.ModelGetSet = dr[3].ToString();
                    objUserBusinessLayer.ManufacturerGetSet = dr[4].ToString();
                    objUserBusinessLayer.PriceGetSet = Convert.ToInt32(dr[5]);
                    objUserBusinessLayer.StockcountGetSet = Convert.ToInt32(dr[6]);
                    objUserBusinessLayer.DescriptionGetSet = dr[7].ToString();
                    objUserBusinessLayer.ReleaseDateGetSet = Convert.ToDateTime( dr[8].ToString());
                }

                return objUserBusinessLayer;
            }
        }

        public object GetAccountDetails(GETSET objUserBusinessLayer)
        {
            using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["PCPARTSEXPRESSDB"].ConnectionString))
            {

                SqlCommand GetAccountSC = new SqlCommand("Select CustomerEmailAddress, firstName, lastName, Address, contactNo from Customer where CustomerEmailAddress=@email", connection);
                GetAccountSC.Parameters.AddWithValue("@email", objUserBusinessLayer.EmailAddressGetSet);
                connection.Open();
                SqlDataReader dr = GetAccountSC.ExecuteReader();

                while (dr.Read())
                {

                    objUserBusinessLayer.EmailAddressGetSet = dr[0].ToString();
                    objUserBusinessLayer.FirstNameGetSet = dr[1].ToString();
                    objUserBusinessLayer.LastNameGetSet = dr[2].ToString();
                    objUserBusinessLayer.StreetAddressGetSet = dr[3].ToString();
                    objUserBusinessLayer.PhoneNumberGetSet = dr[4].ToString();
                }

                return objUserBusinessLayer;
            }
        }

        public object GetAdminAccountDetails(GETSET objUserBusinessLayer)
        {
            using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["PCPARTSEXPRESSDB"].ConnectionString))
            {

                SqlCommand GetAccountSC = new SqlCommand("Select AdminEmailAddress, firstName, lastName from Admin where AdminEmailAddress=@email", connection);
                GetAccountSC.Parameters.AddWithValue("@email", objUserBusinessLayer.EmailAddressGetSet);
                connection.Open();
                SqlDataReader dr = GetAccountSC.ExecuteReader();

                while (dr.Read())
                {
                    objUserBusinessLayer.EmailAddressGetSet = dr[0].ToString();
                    objUserBusinessLayer.FirstNameGetSet = dr[1].ToString();
                    objUserBusinessLayer.LastNameGetSet = dr[2].ToString();
                }

                return objUserBusinessLayer;
            }
        }

        public string UpdateRegistration(GETSET objuserbusinessLayer)
        {
            string query = "UPDATE [Customer] SET  firstName = @firstname, lastName = @lastname, Address = @Address, contactNo = @PhoneNumber WHERE CustomerEmailAddress = @EmailAddress";

            using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["PCPARTSEXPRESSDB"].ConnectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                    command.Parameters.AddWithValue("@EmailAddress", objuserbusinessLayer.EmailAddressGetSet);
                    command.Parameters.AddWithValue("@firstname", objuserbusinessLayer.FirstNameGetSet);
                    command.Parameters.AddWithValue("@lastname", objuserbusinessLayer.LastNameGetSet);
                    command.Parameters.AddWithValue("@Address", objuserbusinessLayer.StreetAddressGetSet);
                    command.Parameters.AddWithValue("@PhoneNumber", objuserbusinessLayer.PhoneNumberGetSet);
                command.ExecuteNonQuery();
            }
            return "";
        }

        public string UpdateProductDetails(GETSET objUserBusinessLayer)
        {
            using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["PCPARTSEXPRESSDB"].ConnectionString))
            {

                SqlCommand NewProducts = new SqlCommand("Update products SET productName = @productName, model = @model, manufacturer = @manufacturer, price = @price, stockcount = @stockcount, description = @description, releaseDate = @releaseDate WHERE productID = @productID ", connection);

                NewProducts.Parameters.AddWithValue("@productID", objUserBusinessLayer.IDGetSet);
                NewProducts.Parameters.AddWithValue("@productName", objUserBusinessLayer.ProductNameGetSet);
                NewProducts.Parameters.AddWithValue("@model", objUserBusinessLayer.ModelGetSet);
                NewProducts.Parameters.AddWithValue("@manufacturer", objUserBusinessLayer.ManufacturerGetSet);
                NewProducts.Parameters.AddWithValue("@price", objUserBusinessLayer.PriceGetSet);
                NewProducts.Parameters.AddWithValue("@stockcount", objUserBusinessLayer.StockcountGetSet);
                NewProducts.Parameters.AddWithValue("@description", objUserBusinessLayer.DescriptionGetSet);
                NewProducts.Parameters.AddWithValue("@releaseDate", objUserBusinessLayer.ReleaseDateGetSet);
                connection.Open();
                NewProducts.ExecuteNonQuery();
            }
            return "";
        }
    }

}



