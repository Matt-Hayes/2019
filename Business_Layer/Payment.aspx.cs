using INFT3050.PaymentSystem;
using System;
using System.Threading.Tasks;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PCPPartsExpress
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnConfirmation_Click(object sender, EventArgs e)
        {
            //page will only run payment if page is valid
            if (Page.IsValid)
            {
                //create new payment from payment code
                IPaymentSystem paymentSystem = INFT3050PaymentFactory.Create();
                PaymentRequest payment = new PaymentRequest();

                //take user data from input page
                payment.CardName = txtbxCardName.Text;
                payment.CardNumber = txtbxCardNumber.Text;
                payment.CVC = Convert.ToInt32(txtbxCVC.Text);
                payment.Expiry = new DateTime(Convert.ToInt32(txtbxYear.Text), Convert.ToInt32(txtbxMonth.Text), Convert.ToInt32(txtbxDay.Text)); //new DateTime(2020, 11, 1);
                payment.Amount = 200;
                payment.Description = "test";

                //compare input user data for validation
                var task = paymentSystem.MakePayment(payment);

                //return result of data validation
                string result = Convert.ToString(task.Result.TransactionResult);

                //display result
                lblPaymentStatus.Text = result;

                //if result is approve move user to confirmation page
                if (result == "Approved")
                {
                    //display loading bar to simulate processing
                    task.Wait();
                    lblPaymentStatus.Text = result;
                    task.Wait();
                    Response.Redirect("Confirmation.aspx");
                }
            }
        }
    }
}