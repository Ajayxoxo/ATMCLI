using System;

namespace ATMApplicationEnum
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Clear error and success messages
            ResultLabel.Text = string.Empty;
        }

        protected void CreateAccountButton_Click(object sender, EventArgs e)
        {
            // Retrieve inputs
            string cardNumber = CardNumberTextBox.Text.Trim();
            string pin = PinTextBox.Text.Trim();
            string phoneNumber = PhoneNumberTextBox.Text.Trim();

            // Basic validation
            if (string.IsNullOrEmpty(cardNumber) || string.IsNullOrEmpty(pin) || string.IsNullOrEmpty(phoneNumber))
            {
                ResultLabel.Text = "All fields are required.";
                return;
            }

            if (pin.Length < 4 || pin.Length > 6)
            {
                ResultLabel.Text = "PIN must be between 4 and 6 digits.";
                return;
            }

            long phoneNum;
            if (!long.TryParse(phoneNumber, out phoneNum))
            {
                ResultLabel.Text = "Phone number must be numeric.";
                return;
            }

            // Check if card number already exists
            if (Global.Users.ContainsKey(cardNumber))
            {
                ResultLabel.Text = "Card number already exists.";
                return;
            }

            // Add new account to Global dictionaries
            Global.Users.Add(cardNumber, pin);
            Global.PhoneNumbers.Add(cardNumber, phoneNumber);
            Global.AccountBalances.Add(cardNumber, 0.0m); // Initialize balance to zero

            ResultLabel.ForeColor = System.Drawing.Color.Green;
            ResultLabel.Text = "Account created successfully!";
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            // Redirect to a previous page (e.g., Login.aspx)
            Response.Redirect("CardNumber.aspx");
        }
    }
}
