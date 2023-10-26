using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AssignmentSite.BLL;

namespace AssignmentSite.admin
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvFeatured_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtFeatured.Text= gvFeatured.SelectedRow.Cells[1].Text;
            txtArticle.Text = gvFeatured.SelectedRow.Cells[2].Text;
        }

        protected void gvArticles_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtArticle.Text = gvArticles.SelectedRow.Cells[1].Text;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Boolean updated=false;

            try
            {
                Article featuredArticle = new Article();

                updated =featuredArticle.updateFeatured(Convert.ToInt32(txtFeatured.Text), Convert.ToInt32(txtArticle.Text));

            }
            catch(Exception ex)
            {
            }

            if (updated)
            {
                lblOutput.Text = "Update successfully made!";
            }
            else
            {
                lblOutput.Text = "Error! Please ensure that both ID numbers are valid!";
            }
        }
    }
}