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

            //check for cookie
            if (Request.Cookies["cart"] != null)
            {
                //get total item count
                String[] cartItems = Request.Cookies["cart"]["items"].ToString().Split('/');

                int totalItems = 0;

                for(int i = 0; i < cartItems.Length; i++)
                {
                    String[] itemInfo = cartItems[i].Split(',');
                    int quantity = Convert.ToInt32(itemInfo[1]);

                    totalItems += quantity;
                }

                if (totalItems > 0)
                {
                    lblCart.Text = "Cart(" + totalItems.ToString() + ")";
                }
                else
                {
                    lblCart.Text = "Cart";
                }
            }
        }
    }
}