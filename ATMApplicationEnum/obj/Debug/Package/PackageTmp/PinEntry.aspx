<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PinEntry.aspx.cs" Inherits="ATMApplicationEnum.PinEntry" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>Enter Your PIN</title>
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

        label {
            display: block;
            font-size: 16px;
            color: #333;
            margin-bottom: 10px;
        }

        input[type="password"] {
            width: 100%;
            padding: 12px;
            font-size: 18px;
            margin-bottom: 20px;
            border: 2px solid #000;
            background-color: transparent;
            color: #333;
            text-align: center;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="password"]:focus {
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
    <form id="pinEntryForm" runat="server">
        <h2>Enter Your PIN</h2>
        <div>
            <label for="PinTextBox">PIN:</label>
            <asp:TextBox ID="PinTextBox" runat="server" TextMode="Password" MaxLength="4" placeholder="Enter your PIN" />
        </div>
        <div>
            <asp:Button ID="SubmitPinButton" runat="server" Text="Submit" OnClick="SubmitPinButton_Click" CssClass="button" />
        </div>
        <div>
            <asp:Label ID="ErrorMessageLabel" runat="server" ForeColor="Red" CssClass="error-message" />
        </div>
    </form>
</body>
</html>
