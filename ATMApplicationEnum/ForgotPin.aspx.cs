using System;

namespace ATMApplicationEnum
{
    public partial class ForgotPIN : System.Web.UI.Page
    {
        protected void RecoverPINButton_Click(object sender, EventArgs e)
        {
            string cardNumber = CardNumberTextBox.Text.Trim();
            string phoneNumber = PhoneNumberTextBox.Text.Trim();

            // Validate input
            if (string.IsNullOrEmpty(cardNumber) || string.IsNullOrEmpty(phoneNumber))
            {
                ResultLabel.Text = "Please fill in both fields.";
                return;
            }

            // Check if the card number exists in the users dictionary
            if (Global.Users.ContainsKey(cardNumber))
            {
                // Check if the phone number matches the one stored for this card number
                if (Global.PhoneNumbers.ContainsKey(cardNumber) && Global.PhoneNumbers[cardNumber] == phoneNumber)
                {
                    // If the phone number matches, show the PIN
                    string pin = Global.Users[cardNumber];
                    ResultLabel.ForeColor = System.Drawing.Color.Green;
                    ResultLabel.Text = "Your PIN is: " + pin; // Using string concatenation
                }
                else
                {
                    // If the phone number doesn't match, show an error message
                    ResultLabel.Text = "The phone number does not match our records.";
                }
            }
            else
            {
                // If the card number doesn't exist
                ResultLabel.Text = "Card number not found.";
            }



        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            // Redirect to the CardNumber.aspx page
            Response.Redirect("CardNumber.aspx");
        }
    }
}
