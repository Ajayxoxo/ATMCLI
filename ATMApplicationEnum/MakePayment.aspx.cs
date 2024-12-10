using System;
using System.Web;

namespace ATMApplicationEnum
{
    public partial class MakePayment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the user is logged in
            if (Session["CardNumber"] == null)
            {
                // Redirect to login page if not logged in
                Response.Redirect("CardNumber.aspx");
            }
        }

        protected void MakePaymentButton_Click(object sender, EventArgs e)
        {
            try
            {
                // Get the sender's card number from the session
                string senderCardNumber = Session["CardNumber"].ToString();

                // Get the amount and recipient's card number from the textboxes
                decimal amount = decimal.Parse(AmountTextBox.Text);
                string recipientCardNumber = RecipientTextBox.Text;

                // Check if the sender has sufficient funds
                if (Global.AccountBalances.ContainsKey(senderCardNumber) && Global.AccountBalances[senderCardNumber] >= amount)
                {
                    // Deduct the amount from the sender's account
                    Global.AccountBalances[senderCardNumber] -= amount;

                    // Check if recipient exists in the system and add the amount to the recipient's account
                    if (Global.AccountBalances.ContainsKey(recipientCardNumber))
                    {
                        Global.AccountBalances[recipientCardNumber] += amount;

                        // Show success message
                        SuccessMessageLabel.Text = "Payment successful! Amount transferred.";
                    }
                    else
                    {
                        // Recipient doesn't exist in the system
                        ErrorMessageLabel.Text = "Recipient card number is invalid.";
                    }
                }
                else
                {
                    // Insufficient funds or sender not found
                    ErrorMessageLabel.Text = "Insufficient funds or sender not found.";
                }
            }
            catch (Exception ex)
            {
                // Log the error and show a general error message
                ErrorMessageLabel.Text = "An error occurred: " + ex.Message;
            }
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            // Redirect to ATM menu page
            Response.Redirect("ATMMenu.aspx");
        }
    }
}
