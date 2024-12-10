using System;

namespace ATMApplicationEnum
{
    public partial class WithdrawMoney : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Add logic to validate session or card existence
            string cardNumber = Request.QueryString["card"];
            if (string.IsNullOrEmpty(cardNumber) || !Global.AccountBalances.ContainsKey(cardNumber))
            {
                MessageLabel.Text = "Invalid card session. Redirecting to login...";
                Response.Redirect("Login.aspx");
            }
        }

        protected void WithdrawButton_Click(object sender, EventArgs e)
        {
            // Retrieve the card number from the query string
            string cardNumber = Request.QueryString["card"];

            if (string.IsNullOrEmpty(cardNumber))
            {
                MessageLabel.Text = "Invalid card session. Please try again.";
                return;
            }

            // Get the withdrawal amount entered by the user
            decimal amountToWithdraw;
            bool isAmountValid = Decimal.TryParse(AmountTextBox.Text, out amountToWithdraw);

            // Validate the entered amount
            if (!isAmountValid || amountToWithdraw <= 0)
            {
                MessageLabel.Text = "Please enter a valid amount greater than zero.";
                return;
            }

            // Check if the card number exists in the "Users" dictionary
            if (Global.AccountBalances.ContainsKey(cardNumber))
            {
                // Retrieve current balance
                decimal currentBalance = Global.AccountBalances[cardNumber];

                // Check if there are sufficient funds
                if (currentBalance >= amountToWithdraw)
                {
                    // Update balance and display success message
                    Global.AccountBalances[cardNumber] = currentBalance - amountToWithdraw;

                    // Use string.Format to construct the success message
                    MessageLabel.Text = string.Format("Success! You withdrew {0:C}. New balance: {1:C}.",
                        amountToWithdraw, Global.AccountBalances[cardNumber]);
                }
                else
                {
                    MessageLabel.Text = "Insufficient funds. Please enter a smaller amount.";
                }
            }
            else
            {
                MessageLabel.Text = "Card not found. Please contact customer support.";
            }
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            // Redirect to the ATM menu page
            string cardNumber = Request.QueryString["card"];
            if (!string.IsNullOrEmpty(cardNumber))
            {
                Response.Redirect("ATMMenu.aspx?card=" + cardNumber);
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}
