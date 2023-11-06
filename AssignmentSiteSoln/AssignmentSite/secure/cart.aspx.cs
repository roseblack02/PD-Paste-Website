using System;
using System.Collections.Generic;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI.WebControls;
using AssignmentSite.App_Code.BLL;
using IPGeolocation;

namespace AssignmentSite.secure
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            checkCookie();
            lblTotalCost.Text= getCountryName();
        }

        public void loadCart()
        {
            //list of currency symbols
            String[] symbols = { "£", "$", "€" };

            // clear previous items
            this.pnlOrders.Controls.Clear();
            double totalCost = 0;
            int totalItems = 0;
            int shipping = 0;
            String strShipping = "";

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
                totalCost += shipping;
                totalItems += quantity;

                // add the item controls (labels) to the panel  
                this.pnlOrders.Controls.Add(itemLabel);
            }

            //show total items and cost
            this.lblOrderSummary.Text = totalItems + " items in your cart";
            this.lblTotalCost.Text = "<br><br>Shipping : " + symbols[ddlCurrency.SelectedIndex] + strShipping;
            this.lblTotalCost.Text = "<br>Total Cost : " + symbols[ddlCurrency.SelectedIndex] + totalCost;
        }

        public static double convertCurrency(double price, int currency)
        {
            //list containing exhange rates in order of GBP, USD, EUR
            //GBP is base currency
            double[] exchangeRates = { 1, 1.24, 1.15 };

            return price * exchangeRates[currency];
        }

        public String getCountryName()
        {
            String country = "";

            // create IPGeolocation api object and pass in key
            IPGeolocationAPI api = new IPGeolocationAPI("e7bc9e3d899743aca2697fb48dc09594");

            // set ip address and parameters for api
            //ip address is stored in a hidden <p> as it uses a js api to get client side address 
            GeolocationParams geoParams = new GeolocationParams();
            geoParams.SetIPAddress(address.InnerText);
            geoParams.SetFields("country_name");

            Dictionary<String, Object> response = api.GetGeolocation(geoParams);

            //check if response is valid and get country name
            if (Convert.ToInt32(response["status"]) == 200)
            {
                Geolocation geolocation = (Geolocation)response["response"];
                country = geolocation.GetCountryName();
            }
            else
            {
                country = response["message"].ToString();
            }

            return country;
        }

        protected void ddlCurrency_SelectedIndexChanged(object sender, EventArgs e)
        {
            //check for cookie and reload basket
            checkCookie();
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

        public void checkCookie()
        {
            //check for cookie
            if (Request.Cookies["cart"] == null)
            {
                lblOrderSummary.Text = "No items in cart";
                lblTotalCost.Text = "";
                lblShipping.Text = "";
            }
            else
            {
                loadCart();
            }
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