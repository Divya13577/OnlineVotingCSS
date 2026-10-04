<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Voting.aspx.cs"
    Inherits="OnlineVotingCSS.Voting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Cast Your Vote</title>

    <link href="style.css?v=3" rel="stylesheet" type="text/css" />

</head>

<body>

    <form id="form1" runat="server">

        <div class="voting-page">

            <div class="voting-overlay">

                <div class="voting-card">

                    <div class="vote-icon">
                        🗳️
                    </div>

                    <h1>Cast Your Vote</h1>

                    <p class="voting-subtitle">
                        Select your preferred candidate
                    </p>

                    <div class="vote-section">

                        <asp:Label
                            ID="lblCandidate"
                            runat="server"
                            Text="Select Candidate">
                        </asp:Label>

                        <asp:DropDownList
                            ID="ddlCandidates"
                            runat="server"
                            CssClass="candidate-dropdown">
                        </asp:DropDownList>

                    </div>

                    <asp:Button
                        ID="btnVote"
                        runat="server"
                        Text="Submit Vote"
                        CssClass="submit-vote-btn"
                        OnClick="btnVote_Click" />

                    <asp:Button
                        ID="btnLogout"
                        runat="server"
                        Text="Logout"
                        CssClass="vote-logout-btn"
                        OnClick="btnLogout_Click" />

                    <p class="voting-footer">
                        Your vote is confidential and secure
                    </p>

                </div>

            </div>

        </div>

    </form>

</body>

</html>
