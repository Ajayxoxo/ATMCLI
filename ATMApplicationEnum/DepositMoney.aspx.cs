using System;
using System.Web;

namespace ATMApplicationEnum
{
    public partial class DepositMoney : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the user is logged in (i.e., if their card number is available in session)
            if (Session["CardNumber"] == null)
            {
                // If not logged in, redirect to the login page
                Response.Redirect("CardNumber.aspx");
            }
        }

        protected void DepositButton_Click(object sender, EventArgs e)
        {
            try
            {
                // Retrieve the card number from session (used to identify the user)
                string cardNumber = Session["CardNumber"].ToString();

                // Get the deposit amount from the AmountTextBox
                decimal depositAmount = 0;

                if (decimal.TryParse(AmountTextBox.Text, out depositAmount) && depositAmount > 0)
                {
                    // Check if the card number exists in the account balances dictionary
                    if (Global.AccountBalances.ContainsKey(cardNumber))
                    {
                        // Add the deposit amount to the user's current balance
                        Global.AccountBalances[cardNumber] += depositAmount;

                        // Display a success message
                        MessageLabel.Text = "You have successfully deposited " + depositAmount.ToString("C") + ". Your new balance is " + Global.AccountBalances[cardNumber].ToString("C");
                        MessageLabel.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        // If the card number is not found, show an error
                        MessageLabel.Text = "Error: Card number not found.";
                        MessageLabel.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    // If the input is invalid, display an error message
                    MessageLabel.Text = "Error: Please enter a valid deposit amount.";
                    MessageLabel.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                // In case of any errors, display a general error message
                MessageLabel.Text = "An error occurred: " + ex.Message;
                MessageLabel.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            // Redirect to ATM menu page
            Response.Redirect("ATMMenu.aspx");
        }
    }
}
