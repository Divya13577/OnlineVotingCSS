using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace OnlineVotingCSS
{
    public partial class VoterRegistration : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string connectionString =
                ConfigurationManager.
                
                
               ConnectionStrings["OnlineVotingDB"].ConnectionString;

            string query = @"INSERT INTO Voters
                             (FullName, Email, Password, Age, HasVoted)
                             VALUES
                             (@FullName, @Email, @Password, @Age, 0)";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@FullName", txtFullName.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                    cmd.Parameters.AddWithValue("@Age", Convert.ToInt32(txtAge.Text));

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            Response.Write("<script>alert('Registration Successful!');</script>");
        }

        protected void btnBackHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}