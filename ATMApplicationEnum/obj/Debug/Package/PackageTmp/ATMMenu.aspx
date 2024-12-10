<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ATMMenu.aspx.cs" Inherits="ATMApplicationEnum.ATMMenu" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>ATM Menu</title>
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

        p {
            font-size: 16px;
            color: #555;
            margin-bottom: 30px;
        }

        .button {
            width: 100%;
            padding: 15px;
            background-color: #ff3b30;
            color: white;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-transform: uppercase;
            letter-spacing: 2px;
            margin-top: 10px;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #ff2b1d;
        }

        .button:focus {
            outline: none;
        }

        .button:active {
            background-color: #ff1a0f;
        }

        .button:disabled {
            background-color: #d6d6d6;
            cursor: not-allowed;
        }

    </style>
</head>
<body>
    <form id="atmMenuForm" runat="server">
        <h2>Welcome to ATM</h2>
        <p>Select an option below:</p>

        <!-- ATM Menu Buttons -->
        <div>
            <asp:Button ID="WithdrawMoneyButton" runat="server" Text="Withdraw Money" OnClick="WithdrawMoneyButton_Click" CssClass="button" />
        </div>
        <div>
            <asp:Button ID="MakePaymentButton" runat="server" Text="Transfer Money" OnClick="MakePaymentButton_Click" CssClass="button" />
        </div>
        <div>
            <asp:Button ID="DepositMoneyButton" runat="server" Text="Deposit Money" OnClick="DepositMoneyButton_Click" CssClass="button" />
        </div>
        <div>
            <asp:Button ID="AccountBalanceButton" runat="server" Text="Check Account Balance" OnClick="AccountBalanceButton_Click" CssClass="button" />
        </div>
        <div>
            <asp:Button ID="LogoutButton" runat="server" Text="Logout" OnClick="LogoutButton_Click" CssClass="button" />
        </div>
    </form>
</body>
</html>
