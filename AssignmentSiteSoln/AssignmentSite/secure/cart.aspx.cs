using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AssignmentSite.App_Code.BLL;
using AssignmentSite.BLL;

namespace AssignmentSite.secure
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //check for cookie
            if (Request.Cookies["cart"] == null)
            {
                lblOrderSummary.Text = "No items in cart";
                lblTotalCost.Text = "";
            }
            else
            {
                loadCart();
            }
        }

        public void loadCart()
        {
            //list of currency symbols
            String[] symbols = { "£", "$", "€" };

            // clear previous items
            this.pnlOrders.Controls.Clear();
            double totalCost = 0;
            int totalItems = 0;

            String[] cartItems = Request.Cookies["cart"]["items"].ToString().Split('/');

            //loop through cart and add items to panel
            for (int i = 0; i < cartItems.Length; i++)
            {
                //get item info
                int id = Convert.ToInt32(cartItems[i].Split(',')[0]);
                int quantity = Convert.ToInt32(cartItems[i].Split(',')[1]);

                //string builder object to put items in as strings
                StringBuilder sb = new StringBuilder();

                //get product info
                Product product = new Product();
                String[] details = product.getProduct(id);

                String name = details[0];
                Double price = Convert.ToDouble(details[3]);

                //get currency from drop down list
                int currency = ddlCurrency.SelectedIndex;

                //price
                double cost = convertCurrency(price, ddlCurrency.SelectedIndex);


                Label itemLabel = new Label();
                //itemLabel.CssClass = "cartInfo";

                sb.Append("<br>______________________________________<br>");

                sb.Append("Name : " + name + "<br>");
                sb.Append("Cost : " + symbols[ddlCurrency.SelectedIndex] + cost + "<br>");
                sb.Append("Quantity : " + quantity + "<br>");
                itemLabel.Text = sb.ToString();

                //count up cost and quantity
                totalCost += (cost * quantity);
                totalItems += quantity;

                // add the item controls (labels) to the panel  
                this.pnlOrders.Controls.Add(itemLabel);
            }

            //show total items and cost
            this.lblOrderSummary.Text = totalItems + " items in your cart";
            this.lblTotalCost.Text = "<br><br>Total Cost : " + symbols[ddlCurrency.SelectedIndex] + totalCost;
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
            //check for cookie
            if (Request.Cookies["cart"] == null)
            {
                lblOrderSummary.Text = "No items in cart";
                lblTotalCost.Text = "";
            }
            else
            {
                loadCart();
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clear();
        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {
            //update quantity


            //clear cart
            clear();
        }

        public void clear()
        {
            //recreate cookie butwith negative length of time
            HttpCookie objCookie = new HttpCookie("cart");

            objCookie.Expires = DateTime.Now.Add(new TimeSpan(-1));

            Response.Cookies.Add(objCookie);

            Response.Redirect("~/secure/cart.aspx");
        }
    }
}