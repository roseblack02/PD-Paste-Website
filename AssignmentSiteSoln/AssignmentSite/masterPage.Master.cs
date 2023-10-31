using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentSite
{
    public partial class masterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    lblUsername.Text = "Welcome " + HttpContext.Current.User.Identity.Name;

                    hlAdmin.Visible = HttpContext.Current.User.Identity.Name.Equals("admin");
                    hlLogin.Text = "Logout";
                }
                else
                {
                    hlLogin.Text = "Login";
                    lblUsername.Text = "You are not logged in";
                }
            }
        }
    }
}