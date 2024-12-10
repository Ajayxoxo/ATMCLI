using System;

namespace ATMApplicationEnum
{
    public partial class AccountBalance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the user is logged in (i.e., if their card number is available in session)
            if (Session["CardNumber"] == null)
            {
                // If not logged in, redirect to the login page
                Response.Redirect("CardNumber.aspx");
            }
            else
            {
                // Display the current account balance
                string cardNumber = Session["CardNumber"].ToString();

                if (Global.AccountBalances.ContainsKey(cardNumber))
                {
                    decimal balance = Global.AccountBalances[cardNumber];
                    BalanceLabel.Text = "Your current balance is: " + balance.ToString("C");
                }
                else
                {
                    // If the card number doesn't exist, show an error message
                    BalanceLabel.Text = "Error: Account not found.";
                    BalanceLabel.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void DepositButton_Click(object sender, EventArgs e)
        {
            // Redirect to the DepositMoney.aspx page to allow user to deposit money
            Response.Redirect("DepositMoney.aspx");
        }

        protected void WithdrawButton_Click(object sender, EventArgs e)
        {
            // Redirect to the WithdrawMoney.aspx page to allow user to withdraw money
            Response.Redirect("WithdrawMoney.aspx");
        }
    }
}
