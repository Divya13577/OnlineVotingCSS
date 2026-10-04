<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="VoterLogin.aspx.cs"
    Inherits="OnlineVotingCSS.VoterLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Voter Login</title>

    <link href="style.css?v=2" rel="stylesheet" type="text/css" />

</head>

<body>

    <form id="form1" runat="server">

        <div class="login-page">

            <div class="login-overlay">

                <div class="login-card">

                    <div class="login-icon">
                        🔐
                    </div>

                    <h1>Voter Login</h1>

                    <p class="login-subtitle">
                        Login to cast your vote
                    </p>

                    <div class="input-group">

                        <asp:Label
                            ID="lblEmail"
                            runat="server"
                            Text="Email Address">
                        </asp:Label>

                        <asp:TextBox
                            ID="txtEmail"
                            runat="server"
                            CssClass="input-box"
                            TextMode="Email"
                            placeholder="Enter your email">
                        </asp:TextBox>

                    </div>

                    <div class="input-group">

                        <asp:Label
                            ID="lblPassword"
                            runat="server"
                            Text="Password">
                        </asp:Label>

                        <asp:TextBox
                            ID="txtPassword"
                            runat="server"
                            CssClass="input-box"
                            TextMode="Password"
                            placeholder="Enter your password">
                        </asp:TextBox>

                    </div>

                    <asp:Button
                        ID="btnLogin"
                        runat="server"
                        Text="Login"
                        CssClass="login-btn"
                        OnClick="btnLogin_Click" />

                    <asp:Button
                        ID="btnBackHome"
                        runat="server"
                        Text="← Back to Home"
                        CssClass="back-home-btn"
                        OnClick="btnBackHome_Click" />

                    <p class="login-footer">
                        Secure Voting System
                    </p>

                </div>

            </div>

        </div>

    </form>

</body>

</html>
