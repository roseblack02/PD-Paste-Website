using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AssignmentSite.BLL;

namespace AssignmentSite.articles
{
    public partial class shagPro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = 1;

                Article article = new Article();
                String[] articleInfo = article.getArticle(id);

                /*int views = Convert.ToInt32(articleInfo[3]) + 1;

                try
                {
                    Boolean updated = article.updateViews(id, views);
                }
                catch (Exception ex)
                {
                }*/

                refViewCounter.viewCounter viewCounter = new refViewCounter.viewCounter();

                int views = viewCounter.updateViews(id);

                lblViews.Text = "Views: " + views.ToString();
                lblDate.Text = "Date: " + articleInfo[4].ToString();
            }
                
        }
    }
}