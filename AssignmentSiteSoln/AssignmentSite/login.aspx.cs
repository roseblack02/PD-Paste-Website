using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using AssignmentSite.BLL;

namespace AssignmentSite
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnLogout.Visible = HttpContext.Current.User.Identity.IsAuthenticated;
        }

        protected void lgLogin_Authenticate(object sender, AuthenticateEventArgs e)
        {
            Account acc = new Account();
            acc.login(lgLogin.UserName, lgLogin.Password);
            int id = acc.getID();

            if (id > -1)
            {
                FormsAuthentication.RedirectFromLoginPage(lgLogin.UserName, true);
                Response.Redirect("~/index.aspx");
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/index.aspx");
        }
    }
}