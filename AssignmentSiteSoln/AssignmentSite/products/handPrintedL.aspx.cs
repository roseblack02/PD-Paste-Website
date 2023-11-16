using AssignmentSite.App_Code.BLL;
using AssignmentSite.refCurWS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentSite.products
{
    public partial class handPrintedL : System.Web.UI.Page
    {
        public const int ID = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //load info from database
                Product product = new Product();
                String[] details = product.getProduct(ID);

                //set info from database
                imgProduct.ImageUrl = details[1];
                imgProduct.AlternateText = details[0];
                lblCost.Text = details[3];

                //check quantity
                if (!checkQuantity())
                {
                    lblInStock.Text = "Out of stock";
                }
                else
                {
                    lblInStock.Text = "In stock";
                }
            }
        }

        //old currecny converter function
        /*public static double convertCurrency(double price, int currency)
        {
            //list containing exhange rates in order of GBP, USD, EUR
            //GBP is base currency
            double[] exchangeRates = { 1, 1.24, 1.15 };

            return price * exchangeRates[currency];
        }*/

        protected void ddlCurrency_SelectedIndexChanged(object sender, EventArgs e)
        {
            Product product = new Product();

            //list of currency symbols
            String[] symbols = { "£", "$", "€" };

            //get currency from drop down list
            int currency = ddlCurrency.SelectedIndex;

            //price
            double cost = Convert.ToDouble(product.getProduct(ID)[3]);

            //convert cost
            refCurWS.currencyWS curObj = new currencyWS();
            lblCost.Text = curObj.convertCurrency(cost, currency).ToString();

            lblPrice.Text = "Price: " + symbols[currency];
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            //only work if quantity is over 0
            if (checkQuantity())
            {
                //check if there is already a cookie
                if (Request.Cookies["cart"] == null)
                {
                    //create cookie
                    HttpCookie objCookie = new HttpCookie("cart");

                    String cookieItems = ID.ToString() + ",1";

                    objCookie["items"] = cookieItems;

                    //cookie lasts a month
                    objCookie.Expires = DateTime.Now.AddMonths(1);

                    Response.Cookies.Add(objCookie);

                    lblOutput.Text = "Item added to cart";
                }
                else
                {
                    //adding items to cart cookie
                    //items are stored with the id and quantity. a / is the delimeter for each item

                    StringBuilder cookie = new StringBuilder();

                    //get items from cart and add them to a string
                    String[] cartItems = Request.Cookies["cart"]["items"].ToString().Split('/');

                    //check if item is already in cart
                    Boolean inCart = false;
                    int quantity = 1;

                    for (int i = 0; i < cartItems.Length; i++)
                    {
                        //prevents errors due to extra / on the end
                        if (cartItems[i].Trim() != "")
                        {
                            //split to get id (0) and quantity (1)
                            String[] itemInfo = cartItems[i].Split(',');
                            int itemQuantity = Convert.ToInt32(itemInfo[1]);

                            //check if item already in cart
                            if (itemInfo[0] == ID.ToString())
                            {
                                //check if quantity available
                                Product product = new Product();
                                String[] details = product.getProduct(ID);
                                int availableStock = Convert.ToInt32(details[2]);

                                //dont update quantity if too high
                                if (quantity + itemQuantity > availableStock)
                                {
                                    quantity = itemQuantity;
                                    lblOutput.Text = "Item not added to cart. Quantity too high";
                                }
                                else
                                {
                                    //update quantity
                                    itemQuantity += quantity;
                                    lblOutput.Text = "Quantity updated. Item added to cart";
                                }

                                inCart = true;
                            }

                            cookie.Append(itemInfo[0] + "," + itemQuantity.ToString() + "/");
                        }

                    }

                    //add item to cart if id not already found in cart
                    if (!inCart)
                    {
                        //add new item
                        cookie.Append("/" + ID.ToString() + "," + quantity.ToString());
                        lblOutput.Text = "Item added to cart";
                    }

                    Response.Cookies["cart"]["items"] = cookie.ToString();
                }
            }
            else
            {
                lblOutput.Text = "Item out of stock";
            }
        }

        //check quantity
        public Boolean checkQuantity()
        {
            Product product = new Product();
            String[] details = product.getProduct(ID);

            //check if item is in stock
            if (details[2] == "0")
            {
                return false;
            }

            return true;
        }

        //move to different page when new size is selected
        protected void ddlSize_SelectedIndexChanged(object sender, EventArgs e)
        {
            //0 large, 1 medium, 2 small
            String[] urls = { "~/products/handPrintedL.aspx?id=1", "~/products/handPrintedM.aspx?id=6", "~/products/handPrintedS.aspx?id=7" };

            Response.Redirect(urls[ddlSize.SelectedIndex-1]);
        }
    }
}