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
            double[] exchangeRates = {1,1.24,1.15};

            return price*exchangeRates[currency];
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
                Label lblInStock = (Label)item.FindControl("lblInStock");
                Label lblStockNum = (Label)item.FindControl("lblStockNum");
                Label lblPrice = (Label)item.FindControl("lblPrice");
                Label lblCost = (Label)item.FindControl("lblCost");
                Label lblID = (Label)item.FindControl("lblID");

                //get id, stock, and price
                int id = Convert.ToInt32(lblID.Text);
                String stock = lblStockNum.Text;
                double cost = Convert.ToDouble(product.getProduct(id)[3]);

                //get stock number and price
                /*DataRowView rowView = item.DataItem as DataRowView;
                String stock = rowView["Stock"].ToString();
                double cost = Convert.ToDouble(rowView["Price"]);
                */

                //convert cost
                lblCost.Text = convertCurrency(cost, currency).ToString();
                lblPrice.Text = "Price: " + symbols[currency];

                //if stock is 0 then set label to out of stock
                if (stock == "0")
                {
                    lblInStock.Text = "Out Of Stock";
                }
            }
        }
    }
}