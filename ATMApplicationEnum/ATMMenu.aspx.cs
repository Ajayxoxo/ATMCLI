using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATMApplicationEnum
{
    public partial class ATMMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void WithdrawMoneyButton_Click(object sender, EventArgs e)
        {
            string cardNumber = Request.QueryString["card"];  // Get the card number from the query string

            // Redirect to the Withdrawal page
            Response.Redirect("WithdrawMoney.aspx?card=" + cardNumber);
        }

        // This method is called when the Make Payment button is clicked
        protected void MakePaymentButton_Click(object sender, EventArgs e)
        {
            string cardNumber = Request.QueryString["card"];  // Get the card number from the query string

            // Redirect to the Make Payment page
            Response.Redirect("MakePayment.aspx?card=" + cardNumber);
        }

        // This method is called when the Deposit Money button is clicked
        protected void DepositMoneyButton_Click(object sender, EventArgs e)
        {
            string cardNumber = Request.QueryString["card"];  // Get the card number from the query string

            // Redirect to the Deposit Money page
            Response.Redirect("DepositMoney.aspx?card=" + cardNumber);
        }

        // This method is called when the Account Balance button is clicked
        protected void AccountBalanceButton_Click(object sender, EventArgs e)
        {
            string cardNumber = Request.QueryString["card"];  // Get the card number from the query string

            // Redirect to the Account Balance page
            Response.Redirect("AccountBalance.aspx?card=" + cardNumber);
        }

        // This method is called when the Transfer Money button is clicked
        protected void TransferMoneyButton_Click(object sender, EventArgs e)
        {
            string cardNumber = Request.QueryString["card"];  // Get the card number from the query string

            // Redirect to the Transfer Money page
            Response.Redirect("TransferMoney.aspx?card=" + cardNumber);
        }

        // This method is called when the Other Services button is clicked
        protected void OtherServicesButton_Click(object sender, EventArgs e)
        {
            string cardNumber = Request.QueryString["card"];  // Get the card number from the query string

            // Redirect to the Other Services page (you can add more functionality here)
            Response.Redirect("OtherServices.aspx?card=" + cardNumber);
        }

        // This method is called when the Logout button is clicked
        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            // Clear the session data and redirect to the login page
            Session.Abandon();
            Response.Redirect("CardNumber.aspx");
        }
    


    }
}