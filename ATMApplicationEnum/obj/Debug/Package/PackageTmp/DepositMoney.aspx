<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepositMoney.aspx.cs" Inherits="ATMApplicationEnum.DepositMoney" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Deposit Money</title>
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

        input[type="number"] {
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
            background-color: #4caf50;
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
            background-color: #45a049;
        }

        .button:focus {
            outline: none;
        }

        .button:active {
            background-color: #388e3c;
        }

        .button:disabled {
            background-color: #d6d6d6;
            cursor: not-allowed;
        }

        .message {
            font-size: 16px;
            color: #4caf50;
            margin-top: 20px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Deposit Money</h2>

            <label for="AmountTextBox">Amount to Deposit:</label>
            <asp:TextBox ID="AmountTextBox" runat="server" placeholder="Enter amount to deposit" type="number" />
            <br />

            <asp:Button ID="DepositButton" runat="server" Text="Deposit" OnClick="DepositButton_Click" CssClass="button" />
            <br /><br />

            <!-- Back Button -->
            <asp:Button ID="BackButton" runat="server" Text="Back to Menu" OnClick="BackButton_Click" CssClass="button" />
            <br />

            <asp:Label ID="MessageLabel" runat="server" CssClass="message" />
        </div>
    </form>
</body>
</html>
