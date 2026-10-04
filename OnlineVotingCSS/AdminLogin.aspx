<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="AdminLogin.aspx.cs"
    Inherits="OnlineVotingCSS.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Admin Login</title>

    <link href="style.css?v=6" rel="stylesheet" type="text/css" />

</head>

<body>

    <form id="form1" runat="server">

        <div class="login-page">

            <div class="login-overlay">

                <div class="login-card">

                    <div class="login-icon">
                        🔐
                    </div>

                    <h1>Admin Login</h1>

                    <p class="login-subtitle">
                        Login to manage the voting system
                    </p>

                    <div class="login-section">

                        <asp:Label
                            ID="lblUsername"
                            runat="server"
                            Text="Username">
                        </asp:Label>

                        <asp:TextBox
                            ID="txtUsername"
                            runat="server"
                            CssClass="login-input"
                            placeholder="Enter your username">
                        </asp:TextBox>

                    </div>

                    <div class="login-section">

                        <asp:Label
                            ID="lblPassword"
                            runat="server"
                            Text="Password">
                        </asp:Label>

                        <asp:TextBox
                            ID="txtPassword"
                            runat="server"
                            TextMode="Password"
                            CssClass="login-input"
                            placeholder="Enter your password">
                        </asp:TextBox>

                    </div>

                    <asp:Button
                        ID="btnAdminLogin"
                        runat="server"
                        Text="Login"
                        CssClass="login-btn"
                        OnClick="btnAdminLogin_Click" />

                    <asp:Button
                        ID="btnBackHome"
                        runat="server"
                        Text="← Back to Home"
                        CssClass="back-home-btn"
                        OnClick="btnBackHome_Click" />

                </div>

            </div>

        </div>

    </form>

</body>

</html>
