using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATMApplicationEnum
{
    public partial class PinEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitPinButton_Click(object sender, EventArgs e)
        {
            // Get the card number from the session
            string cardNumber = Session["CardNumber"] as string;

            // Get the PIN entered by the user
            string enteredPin = PinTextBox.Text;

            // Check if the session contains the card number
            if (cardNumber != null)
            {
                // Check if the entered PIN matches the stored PIN for the card number
                if (Global.Users.ContainsKey(cardNumber) && Global.Users[cardNumber] == enteredPin)
                {
                    // Store language preference in session (default to English if not already set)
                    if (!Global.LanguagePreferences.ContainsKey(cardNumber))
                    {
                        Global.LanguagePreferences[cardNumber] = "English";  // Default language
                    }

                    // Redirect to the ATM menu page after successful PIN validation
                    Response.Redirect("ATMMenu.aspx?card=" + cardNumber);
                }
                else
                {
                    // Display error message for incorrect PIN
                    ErrorMessageLabel.Text = "Incorrect PIN. Please try again.";
                }
            }
            else
            {
                // Handle the case where card number is missing from session (should not happen)
                ErrorMessageLabel.Text = "Session expired or invalid card number.";
            }
        }

    }
}