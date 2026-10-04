using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;

namespace OnlineVotingCSS
{
    public partial class VoterLogin : Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["OnlineVotingDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(conStr))
            {
                string query = "SELECT VoterID FROM Voters WHERE Email=@Email AND Password=@Password";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);

                con.Open();

                object result = cmd.ExecuteScalar();

                if (result != null)
                {
                    Session["VoterID"] = Convert.ToInt32(result);

                    Response.Redirect("Voting.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Email or Password');</script>");
                }
            }
        }

        protected void btnBackHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}