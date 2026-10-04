<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="VoterRegistration.aspx.cs"
    Inherits="OnlineVotingCSS.VoterRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Voter Registration</title>

    <link href="style.css" rel="stylesheet" type="text/css" />

</head>

<body>

    <form id="form1" runat="server">

        <div class="registration-page">

            <div class="registration-overlay">

                <div class="registration-card">

                    <div class="register-icon">
                        📝
                    </div>

                    <h1>Voter Registration</h1>

                    <p class="register-subtitle">
                        Create your voter account
                    </p>

                    <div class="input-group">

                        <asp:Label
                            ID="lblFullName"
                            runat="server"
                            Text="Full Name">
                        </asp:Label>

                        <asp:TextBox
                            ID="txtFullName"
                            runat="server"
                            CssClass="input-box"
                            placeholder="Enter your full name">
                        </asp:TextBox>

                    </div>

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
                            placeholder="Create a password">
                        </asp:TextBox>

                    </div>

                    <div class="input-group">

                        <asp:Label
                            ID="lblAge"
                            runat="server"
                            Text="Age">
                        </asp:Label>

                        <asp:TextBox
                            ID="txtAge"
                            runat="server"
                            CssClass="input-box"
                            TextMode="Number"
                            placeholder="Enter your age">
                        </asp:TextBox>

                    </div>

                    <asp:Button
                        ID="btnRegister"
                        runat="server"
                        Text="Register"
                        CssClass="register-btn"
                        OnClick="btnRegister_Click" />

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
