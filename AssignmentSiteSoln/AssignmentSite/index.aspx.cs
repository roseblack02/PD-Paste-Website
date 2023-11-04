using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AssignmentSite.BLL;

namespace AssignmentSite
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //get carousel info from database
                Article article = new Article();
                String[][] featured = article.getAllFeatured();

                imbFeatured1.ImageUrl = featured[0][2];
                imbFeatured1.PostBackUrl = featured[0][5];
                lblFeatured1.Text = featured[0][0];

                imbFeatured2.ImageUrl = featured[1][2];
                imbFeatured2.PostBackUrl = featured[1][5];
                lblFeatured2.Text = featured[1][0];

                imbFeatured3.ImageUrl = featured[2][2];
                imbFeatured3.PostBackUrl = featured[2][5];
                lblFeatured3.Text = featured[2][0];

                imbFeatured4.ImageUrl = featured[3][2];
                imbFeatured4.PostBackUrl = featured[3][5];
                lblFeatured4.Text = featured[3][0];

                imbFeatured5.ImageUrl = featured[4][2];
                imbFeatured5.PostBackUrl = featured[4][5];
                lblFeatured5.Text = featured[4][0];
            }
        }

        protected void lvPopular_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}