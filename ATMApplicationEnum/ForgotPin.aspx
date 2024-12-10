<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPIN.aspx.cs" Inherits="ATMApplicationEnum.ForgotPIN" %>

<!DOCTYPE html>
<html>
<head>
    <title>Forgot PIN</title>
    <style>
        body {
            background-color: #f0f0f0;
            font-family: 'Arial', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        form {
            background-color: #fff;
            border: 2px solid #000;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.1), -5px -5px 15px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
        }

        h2 {
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
            padding: 12px;
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
            padding: 12px;
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

        .back-button {
            background-color: #0077ff;
            margin-top: 10px;
        }

        .back-button:hover {
            background-color: #0056b3;
        }

        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="ForgotPINForm" runat="server">
        <h2>Forgot PIN</h2>
        <div>
            <label for="CardNumberTextBox">Card Number:</label>
            <asp:TextBox ID="CardNumberTextBox" runat="server" placeholder="Enter your card number" />
        </div>
        <div>
            <label for="PhoneNumberTextBox">Phone Number:</label>
            <asp:TextBox ID="PhoneNumberTextBox" runat="server" placeholder="Enter your phone number" />
        </div>
        <div>
            <asp:Button ID="RecoverPINButton" runat="server" Text="Recover PIN" OnClick="RecoverPINButton_Click" CssClass="button" />
        </div>
        <div>
            <!-- Back Button -->
            <asp:Button ID="BackButton" runat="server" Text="Back" OnClick="BackButton_Click" CssClass="button back-button" />
        </div>
        <div class="error-message">
            <asp:Label ID="ResultLabel" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
