<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="AdminDashboard.aspx.cs"
    Inherits="OnlineVotingCSS.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Admin Dashboard</title>

    <link href="style.css?v=6" rel="stylesheet" type="text/css" />

</head>

<body>

    <form id="form1" runat="server">

        <div class="dashboard-page">

            <div class="dashboard-card">

                <h1>Admin Dashboard</h1>

                <p class="dashboard-subtitle">
                    Voting System Results
                </p>

                <asp:GridView
                    ID="gvResults"
                    runat="server"
                    AutoGenerateColumns="False"
                    CssClass="results-table">

                    <Columns>

                        <asp:BoundField
                            DataField="CandidateName"
                            HeaderText="Candidate" />

                        <asp:BoundField
                            DataField="PartyName"
                            HeaderText="Party" />

                        <asp:BoundField
                            DataField="VoteCount"
                            HeaderText="Votes" />

                    </Columns>

                </asp:GridView>

                <div class="total-votes">

                    <asp:Label
                        ID="lblTotalVotes"
                        runat="server"
                        Text="Total Votes: 0">
                    </asp:Label>

                </div>

                <asp:Button
                    ID="btnAdminLogout"
                    runat="server"
                    Text="Logout"
                    CssClass="admin-logout-btn"
                    OnClick="btnAdminLogout_Click" />

            </div>

        </div>

    </form>

</body>

</html>
