using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



namespace PCPPartsExpress.Business_Layer
{

    //Cs page containing all get set functions of PCPartsExpress site. 
    public class GETSET 
    {
        //declare desired variables 
        private string ID;
        private string FirstName;
        private string LastName;
        private string StreetAddress;
        private string Postcode;
        private string Suburbs;
        private string State;
        private string PhoneNumber;
        private string EmailAddress;
        private string Password;
        private string ProductName;
        private int Price;
        private string Category;
        private string Manufacturer;
        private string Model;
        private string Description;
        private DateTime ReleaseDate;
        private int Stockcount;


        //apply values to variables when called
        public string IDGetSet
        {
            get
            {
                return ID;
            }
            set
            {
                ID = value;
            }
        }
        public string FirstNameGetSet
        {
            get
            {
                return FirstName;
            }
            set
            {
                FirstName = value;
            }
        }
        public string LastNameGetSet
        {
            get
            {
                return LastName;
            }
            set
            {
                LastName = value;
            }
        }
        public string StreetAddressGetSet
        {
            get
            {
                return StreetAddress;
            }
            set
            {
                StreetAddress = value;
            }
        }
        public string PostcodeGetSet
        {
            get
            {
                return Postcode;
            }
            set
            {
               Postcode = value;
            }
        }
        public string SuburbsGetSet
        {
            get
            {
                return Suburbs;
            }
            set
            {
                Suburbs = value;
            }
        }
        public string StateGetSet
        {
            get
            {
                return State;
            }
            set
            {
                State = value;
            }
        }
        public string PhoneNumberGetSet
        {
            get
            {
                return PhoneNumber;
            }
            set
            {
                PhoneNumber = value;
            }
        }
        public string EmailAddressGetSet
        {
            get
            {
                return EmailAddress;
            }
            set
            {
                EmailAddress = value;
            }
        }
        public string PasswordGetSet
        {
            get
            {
                return Password;
            }
            set
            {
                Password = value;
            }
        }
        public string ProductNameGetSet
        {
            get
            {
                return ProductName;
            }
            set
            {
                ProductName = value;
            }
        }
        public string ManufacturerGetSet
        {
            get
            {
                return Manufacturer;
            }
            set
            {
                Manufacturer = value;
            }
        }
        public string DescriptionGetSet
        {
            get
            {
                return Description;
            }
            set
            {
                Description = value;
            }
        }
        public string ModelGetSet
        {
            get
            {
                return Model;
            }
            set
            {
                Model = value;
            }
        }
        public int PriceGetSet
        {
            get
            {
                return Price;
            }
            set
            {
                Price = value;
            }
        }
        public int StockcountGetSet
        {
            get
            {
                return Stockcount;
            }
            set
            {
                Stockcount = value;
            }
        }

        public DateTime ReleaseDateGetSet
        {
            get
            {
                return ReleaseDate;
            }
            set
            {
                ReleaseDate = value;
            }
        }
        public string CategoryGetSet
        {
            get
            {
                return Category;
            }
            set
            {
                Category = value;
            }
        }
    }


}