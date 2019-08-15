using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data.SqlTypes;
using System.Data;
using PCPPartsExpress.Data_Access_Layer;

namespace PCPPartsExpress.Business_Layer
{
    public class BL2
    {
        
        DAL objUserDAL = new DAL();

        //business layer try catch statment for inserting user details
        public string InsertUserDetails(GETSET objUserBusinessLayer)
        {
            try
            {
                return objUserDAL.AddRegistration(objUserBusinessLayer);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                objUserDAL = null;
            }
        }

        //business layer try catch statment for inserting new products
        public string InsertNewProduct(GETSET objUserBusinessLayer)
        {
            try
            {
                return objUserDAL.AddNewProduct(objUserBusinessLayer);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                objUserDAL = null;
            }
        }

        //business layer try catch statment for getting user details
        public object UserDetails(GETSET objUserBusinessLayer)
        {
            try
            {
                return objUserDAL.GetAccountDetails(objUserBusinessLayer);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataSet Useraccountget()
        {
            try
            {
                return objUserDAL.Useraccountget();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //business layer try catch statment for getting admin details                     
        public object AdminDetails(GETSET objUserBusinessLayer)
        {
            try
            {
                return objUserDAL.GetAdminAccountDetails(objUserBusinessLayer);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //business layer try catch statment for viewing data
        public DataSet View()
        {
            try
            {
                DataSet ds = objUserDAL.FetchView();
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //business layer try catch statment for viewing data
        public DataSet View2(string cat)
        {
            try
            {
                DataSet ds = objUserDAL.FetchViewCat(cat);
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //business layer try catch statment for checking account details
        public string CheckAccountDetails(GETSET objUserBusinessLayer)
        {
            try
            {
                if (objUserDAL.CheckAccountCustomer(objUserBusinessLayer) != null)
                {
                    return objUserDAL.CheckAccountCustomer(objUserBusinessLayer);
                }
                else if (objUserDAL.CheckAccountAdmin(objUserBusinessLayer) != null)
                {
                    return objUserDAL.CheckAccountAdmin(objUserBusinessLayer);
                }
                else
                    return null;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //business layer try catch statment for user registration
        public object UserRegistration(GETSET objUserBusinessLayer)
        {
            try
            {
                return objUserDAL.UpdateRegistration(objUserBusinessLayer);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //business layer try catch statment for getting product details
        public object ProductDetails(GETSET objUserBusinessLayer)
        {
            try
            {
                return objUserDAL.FetchProductDetails(objUserBusinessLayer);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //business layer try catch statment for updating product details
        public object UpdateProductDetails(GETSET objUserBusinessLayer)
        {
            try
            {
                return objUserDAL.UpdateProductDetails(objUserBusinessLayer);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}