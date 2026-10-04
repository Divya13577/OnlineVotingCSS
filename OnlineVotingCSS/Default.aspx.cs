using System;
using System.Web.UI;

namespace OnlineVotingCSS
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnVoterLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("VoterLogin.aspx");
        }

        protected void btnVoterRegistration_Click(object sender, EventArgs e)
        {
            Response.Redirect("VoterRegistration.aspx");
        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }
    }
}