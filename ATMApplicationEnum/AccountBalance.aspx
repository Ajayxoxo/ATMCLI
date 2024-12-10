<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountBalance.aspx.cs" Inherits="ATMApplicationEnum.AccountBalance" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Your Account Balance</title>
    <style>
        body {
            background-color: #f5f5f5;
            font-family: 'Arial', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        form {
            background-color: #ffffff;
            border: 2px solid #000;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 6px 6px 20px rgba(0, 0, 0, 0.1), -6px -6px 20px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        h2 {
            font-size: 24px;
            font-weight: bold;
            color: #333;
            margin-bottom: 20px;
        }

        .balance {
            font-size: 30px;
            font-weight: bold;
            color: #28a745;
            margin-bottom: 20px;
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
            margin-top: 10px;
        }

        .button:hover {
            background-color: #ff2b1d;
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
        <h2>Your Account Balance</h2>
        
        <!-- Displaying the balance -->
        <div class="balance">
            <asp:Label ID="BalanceLabel" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Green" />
        </div>
        
        <!-- Deposit and Withdraw buttons -->
        <div>
            <asp:Button ID="DepositButton" runat="server" Text="Deposit Money" OnClick="DepositButton_Click" CssClass="button" />
        </div>
        <div>
            <asp:Button ID="WithdrawButton" runat="server" Text="Withdraw Money" OnClick="WithdrawButton_Click" CssClass="button" />
        </div>
    </form>
</body>
</html>
