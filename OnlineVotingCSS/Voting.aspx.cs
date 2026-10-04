using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;

namespace OnlineVotingCSS
{
    public partial class Voting : Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["OnlineVotingDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCandidates();
            }
        }

        void LoadCandidates()
        {
            using (SqlConnection con = new SqlConnection(conStr))
            {
                string query = "SELECT CandidateID, CandidateName FROM Candidates";

                SqlCommand cmd = new SqlCommand(query, con);

                con.Open();

                ddlCandidates.DataSource = cmd.ExecuteReader();
                ddlCandidates.DataTextField = "CandidateName";
                ddlCandidates.DataValueField = "CandidateID";
                ddlCandidates.DataBind();

                ddlCandidates.Items.Insert(0, "-- Select Candidate --");
            }
        }

        protected void btnVote_Click(object sender, EventArgs e)
        {
            if (ddlCandidates.SelectedIndex == 0)
            {
                Response.Write("<script>alert('Please select a candidate');</script>");
                return;
            }

            if (Session["VoterID"] == null)
            {
                Response.Redirect("VoterLogin.aspx");
                return;
            }

            int voterID = Convert.ToInt32(Session["VoterID"]);
            int candidateID = Convert.ToInt32(ddlCandidates.SelectedValue);

            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();

                string check = "SELECT HasVoted FROM Voters WHERE VoterID=@VoterID";

                SqlCommand checkCmd = new SqlCommand(check, con);
                checkCmd.Parameters.AddWithValue("@VoterID", voterID);

                bool hasVoted = Convert.ToBoolean(checkCmd.ExecuteScalar());

                if (hasVoted)
                {
                    Response.Write("<script>alert('You have already voted');</script>");
                    return;
                }

                string voteQuery =
                    "INSERT INTO Votes (VoterID, CandidateID) VALUES (@VoterID, @CandidateID)";

                SqlCommand voteCmd = new SqlCommand(voteQuery, con);
                voteCmd.Parameters.AddWithValue("@VoterID", voterID);
                voteCmd.Parameters.AddWithValue("@CandidateID", candidateID);
                voteCmd.ExecuteNonQuery();

                string update =
                    "UPDATE Voters SET HasVoted=1 WHERE VoterID=@VoterID";

                SqlCommand updateCmd = new SqlCommand(update, con);
                updateCmd.Parameters.AddWithValue("@VoterID", voterID);
                updateCmd.ExecuteNonQuery();

                Response.Write("<script>alert('Vote submitted successfully'); window.location='VoterLogin.aspx';</script>");
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("VoterLogin.aspx");
        }
    }
}
