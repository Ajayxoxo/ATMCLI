using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace ATMApplicationEnum
{
    public class Global : System.Web.HttpApplication
    {
        // Dictionary to store users' card numbers and PINs
        public static Dictionary<string, string> Users = new Dictionary<string, string>
        {
            { "1234567890", "1234" },  // Card Number: PIN
            { "0987654321", "5678" }   // Example for another user
        };

        // Dictionary to store users' phone numbers by card number
        public static Dictionary<string, string> PhoneNumbers = new Dictionary<string, string>
        {
            { "1234567890", "5551234567" }, // Card Number: Phone Number
            { "0987654321", "5559876543" }  // Another Example
        };

        // Dictionary to store language preferences based on card number
        public static Dictionary<string, string> LanguagePreferences = new Dictionary<string, string>();

        // Dictionary to store the balance for each user
        public static Dictionary<string, decimal> AccountBalances = new Dictionary<string, decimal>
        {
            { "1234567890", 1000.00m },  // Card Number: Balance
            { "0987654321", 500.00m }    // Example for another user
        };

        protected void Application_Start(object sender, EventArgs e)
        {
            // Application start logic here (if needed)
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            // Session start logic here (if needed)
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            // Begin request logic here (if needed)
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
            // Authentication logic here (if needed)
        }

        protected void Application_Error(object sender, EventArgs e)
        {
            // Error handling logic here
        }

        protected void Session_End(object sender, EventArgs e)
        {
            // Session end logic here (if needed)
        }

        protected void Application_End(object sender, EventArgs e)
        {
            // Application end logic here (if needed)
        }
    }
}
