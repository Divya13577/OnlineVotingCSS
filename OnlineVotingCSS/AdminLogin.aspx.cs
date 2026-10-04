using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;

namespace OnlineVotingCSS
{
    public partial class AdminLogin : Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["OnlineVotingDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(conStr))
            {
                string query = "SELECT AdminID FROM Admins WHERE Username=@Username AND Password=@Password";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);

                con.Open();

                object result = cmd.ExecuteScalar();

                if (result != null)
                {
                    Session["AdminID"] = Convert.ToInt32(result);
                    Response.Redirect("AdminDashboard.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Username or Password');</script>");
                }
            }
        }

        protected void btnBackHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}