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

            //check for cookie
            if (Request.Cookies["login"] != null)
            {
                //lgLogin.UserName = Request.Cookies["login"]["username"];
                //lgLogin.Password = Request.Cookies["login"]["password"];
            }
        }

        protected void lgLogin_Authenticate(object sender, AuthenticateEventArgs e)
        {
            Account acc = new Account();
            acc.login(lgLogin.UserName, lgLogin.Password);
            int id = acc.getID();

            if (id > -1)
            {
                if (lgLogin.RememberMeSet)
                {
                    // save user info for cookie
                    //create cookie
                    HttpCookie objCookie = new HttpCookie("login");

                    objCookie["username"] = lgLogin.UserName;
                    objCookie["password"] = lgLogin.Password;

                    //cookie lasts a month
                    objCookie.Expires = DateTime.Now.AddMonths(1);

                    Response.Cookies.Add(objCookie);
                }

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