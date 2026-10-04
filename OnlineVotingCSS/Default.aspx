<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs"
    Inherits="OnlineVotingCSS._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Online Voting System</title>

    <link href="style.css" rel="stylesheet" type="text/css" />

</head>

<body>

    <form id="form1" runat="server">

        <div class="home-page">

            <div class="overlay">

                <div class="voting-card">

                    <div class="vote-icon">
                        🗳️
                    </div>

                    <h1>Online Voting System</h1>

                    <p class="tagline">
                        Your Vote. Your Voice. Your Choice.
                    </p>

                    <p class="description">
                        A simple and secure platform for
                        participating in online elections.
                    </p>

                    <div class="button-section">

                        <asp:Button
                            ID="btnVoterLogin"
                            runat="server"
                            Text="Voter Login"
                            CssClass="btn voter-login" 
                         Onclick="btnVoterLogin_Click" />


                        <asp:Button
                            ID="btnVoterRegistration"
                            runat="server"
                            Text="Voter Registration"
                            CssClass="btn voter-registration" 
                            OnClick="btnVoterRegistration_Click" />

                        <asp:Button
                            ID="btnAdminLogin"
                            runat="server"
                            Text="Admin Login"
                            CssClass="btn admin-login" 
                            OnClick="btnAdminLogin_Click" />

                    </div>

                    <p class="footer-text">
                        Secure • Simple • Transparent
                    </p>

                </div>

            </div>

        </div>

    </form>

</body>

</html>
