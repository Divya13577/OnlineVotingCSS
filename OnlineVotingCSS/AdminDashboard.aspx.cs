using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;

namespace OnlineVotingCSS
{
    public partial class AdminDashboard : Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["OnlineVotingDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminID"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
                return;
            }

            if (!IsPostBack)
            {
                LoadResults();
                LoadTotalVotes();
            }
        }

        void LoadResults()
        {
            using (SqlConnection con = new SqlConnection(conStr))
            {
                string query = @"
                    SELECT 
                        c.CandidateName,
                        c.PartyName,
                        COUNT(v.VoteID) AS VoteCount
                    FROM Candidates c
                    LEFT JOIN Votes v
                        ON c.CandidateID = v.CandidateID
                    GROUP BY c.CandidateID, c.CandidateName, c.PartyName
                    ORDER BY VoteCount DESC";

                SqlDataAdapter da = new SqlDataAdapter(query, con);

                DataTable dt = new DataTable();
                da.Fill(dt);

                gvResults.DataSource = dt;
                gvResults.DataBind();
            }
        }

        void LoadTotalVotes()
        {
            using (SqlConnection con = new SqlConnection(conStr))
            {
                string query = "SELECT COUNT(*) FROM Votes";

                SqlCommand cmd = new SqlCommand(query, con);

                con.Open();

                int totalVotes = Convert.ToInt32(cmd.ExecuteScalar());

                lblTotalVotes.Text = "Total Votes: " + totalVotes;
            }
        }

        protected void btnAdminLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("AdminLogin.aspx");
        }
    }
}