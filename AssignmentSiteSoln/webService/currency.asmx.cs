using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace webService
{
    /// <summary>
    /// Summary description for currency
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class currency : System.Web.Services.WebService
    {
        [WebMethod]
        public static double convertCurrency(double price, int currency)
        {
            //list containing exhange rates in order of GBP, USD, EUR
            //GBP is base currency
            double[] exchangeRates = { 1, 1.24, 1.15 };

            return price * exchangeRates[currency];
        }
    }
}
