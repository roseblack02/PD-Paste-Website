using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Data;
using AssignmentSite.BLL;
using AssignmentSite.App_Code.BLL;

namespace AssignmentSite
{
    public partial class shop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static double convertCurrency(double price, int currency)
        {
            //list containing exhange rates in order of GBP, USD, EUR
            //GBP is base currency
            double[] exchangeRates = { 1, 1.24, 1.15 };

            return price * exchangeRates[currency];
        }

        protected void ddlCurrency_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (ListViewItem item in lvShop.Items)
            {
                Product product = new Product();

                //list of currency symbols
                String[] symbols = { "£", "$", "€" };

                //get currency from drop down list
                int currency = ddlCurrency.SelectedIndex;

                //find labels
                Label lblPrice = (Label)item.FindControl("lblPrice");
                Label lblCost = (Label)item.FindControl("lblCost");
                Label lblID = (Label)item.FindControl("lblID");

                //get id, stock, and price
                int id = Convert.ToInt32(lblID.Text);
                double cost = Convert.ToDouble(product.getProduct(id)[3]);

                //convert cost
                lblCost.Text = convertCurrency(cost, currency).ToString();
                lblPrice.Text = "Price: " + symbols[currency];
            }
        }

        protected void lvShop_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            //check if items is out of stock
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