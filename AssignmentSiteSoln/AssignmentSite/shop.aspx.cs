using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentSite
{
    public partial class shop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lvShop_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                //find label
                Label lblInStock = (Label)e.Item.FindControl("lblInStock");

                //get stock number
                System.Data.DataRowView rowView = e.Item.DataItem as System.Data.DataRowView;
                String stock = rowView["Stock"].ToString();

                //if stock is 0 then set label to out of stock
                if (stock == "0")
                {
                    lblInStock.Text = "Out Of Stock";
                }
            }
        }
    }
}