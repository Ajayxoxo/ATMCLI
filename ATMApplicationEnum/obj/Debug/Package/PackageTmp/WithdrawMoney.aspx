<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WithdrawMoney.aspx.cs" Inherits="ATMApplicationEnum.WithdrawMoney" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Withdraw Money</title>
    <style>
        body {
            background-color: #f4f4f4;
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
            padding: 40px;
            border: 2px solid #000;
            border-radius: 8px;
            box-shadow: 6px 6px 20px rgba(0, 0, 0, 0.1), -6px -6px 20px rgba(0, 0, 0, 0.1);
            width: 320px;
            text-align: center;
        }

        h2 {
            font-size: 26px;
            font-weight: bold;
            color: #333;
            margin-bottom: 20px;
        }

        label {
            font-size: 18px;
            color: #333;
            font-weight: normal;
        }

        input[type="text"], input[type="number"] {
            padding: 12px;
            font-size: 16px;
            border: 2px solid #333;
            border-radius: 5px;
            width: 100%;
            margin-top: 10px;
            margin-bottom: 20px;
        }

        .button {
            width: 100%;
            padding: 15px;
            background-color: #f44336;
            color: white;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-transform: uppercase;
            letter-spacing: 2px;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #e53935;
        }

        .button:focus {
            outline: none;
        }

        .button:active {
            background-color: #d32f2f;
        }

        .button:disabled {
            background-color: #d6d6d6;
            cursor: not-allowed;
        }

        .message {
            font-size: 16px;
            margin-top: 20px;
        }

        .error-message {
            color: red;
        }

        .success-message {
            color: green;
        }

    </style>
</head>
<body>
    <form id="withdrawForm" runat="server">
        <div>
            <h2>Withdraw Money</h2>

            <label for="AmountTextBox">Enter Amount to Withdraw:</label>
            <asp:TextBox ID="AmountTextBox" runat="server" type="number" placeholder="Enter amount" />
            <br />

            <asp:Button ID="WithdrawButton" runat="server" Text="Withdraw" OnClick="WithdrawButton_Click" CssClass="button" />
            <br />

            <asp:Label ID="MessageLabel" runat="server" CssClass="message error-message" />
            <br />

            <asp:Button ID="BackButton" runat="server" Text="Back" OnClick="BackButton_Click" CssClass="button" />
        </div>
    </form>
</body>
</html>
