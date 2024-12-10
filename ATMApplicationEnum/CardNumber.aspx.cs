using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATMApplicationEnum
{
    public partial class CardNumber : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Add any necessary logic for Page_Load here
        }

        protected void SubmitCardNumberButton_Click(object sender, EventArgs e)
        {
            string enteredCardNumber = CardNumberTextBox.Text;

            // Check if the entered card number exists in the dictionary
            if (Global.Users.ContainsKey(enteredCardNumber))
            {
                // Store the card number in the session for later use (on the next pages)
                Session["CardNumber"] = enteredCardNumber;

                // Redirect to the language selection page
                Response.Redirect("PinEntry.aspx");
            }
            else
            {
                // Handle invalid card number (e.g., show error message)
                ErrorMessageLabel.Text = "Invalid card number. Please try again.";
            }
        }

        protected void ForgotPinLink_Click(object sender, EventArgs e)
        {
            // Redirect to ForgotPin.aspx
            Response.Redirect("ForgotPin.aspx");
        }

        protected void CreateAccountLink_Click(object sender, EventArgs e)
        {
            // Redirect to CreateAccount.aspx
            Response.Redirect("CreateAccount.aspx");
        }
    }
}
