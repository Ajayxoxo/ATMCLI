<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CardNumber.aspx.cs" Inherits="ATMApplicationEnum.CardNumber" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Card Number</title>
    <style>
        body {
            background-color: #f1f1f1;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            border: 2px solid #000;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.1), -5px -5px 10px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
        }

        h1 {
            font-size: 24px;
            font-weight: bold;
            color: #333;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-size: 16px;
            color: #333;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 2px solid #000;
            background-color: transparent;
            font-size: 16px;
            color: #333;
            text-align: center;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="text"]:focus {
            outline: none;
            border-color: #ff3b30;
        }

        .button {
            width: 100%;
            padding: 10px;
            background-color: #ff3b30;
            color: white;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-transform: uppercase;
            letter-spacing: 2px;
            margin-bottom: 10px;
        }

        .button:hover {
            background-color: #ff2b1d;
        }

        .link {
            display: block;
            margin-top: 20px;
            font-size: 14px;
            color: #0077ff;
            text-decoration: none;
            text-transform: uppercase;
        }

        .link:hover {
            color: #0056b3;
            text-decoration: underline;
        }

        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Card Number</h1>
        <div>
            <label for="CardNumberTextBox">Card Number:</label>
            <asp:TextBox ID="CardNumberTextBox" runat="server" MaxLength="16" placeholder="Enter your card number" />
        </div>
        <div>
            <asp:Button ID="SubmitCardNumberButton" runat="server" Text="Submit" OnClick="SubmitCardNumberButton_Click" CssClass="button" />
        </div>

        <div class="error-message">
            <asp:Label ID="ErrorMessageLabel" runat="server" ForeColor="Red" />
        </div>

        <div>
            <!-- Link to ForgotPin.aspx with OnClick -->
            <asp:LinkButton ID="ForgotPinLink" runat="server" OnClick="ForgotPinLink_Click" CssClass="link">Forgot PIN?</asp:LinkButton>
        </div>

        <div>
            <!-- Link to CreateAccount.aspx with OnClick -->
            <asp:LinkButton ID="CreateAccountLink" runat="server" OnClick="CreateAccountLink_Click" CssClass="link">Create a new account</asp:LinkButton>
        </div>
    </form>
</body>
</html>
