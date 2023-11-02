using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace externalWS
{
    /// <summary>
    /// Summary description for viewCounter
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class viewCounter : System.Web.Services.WebService
    {

        public int getViews(int id)
        {
            int views = 0;

            string connStr = @"Provider=Microsoft.ACE.OLEDB.12.0;data source=" +
                Path.GetFullPath("../AssignmentSite/App_Data/PasteDB.accdb");

            OleDbConnection conn = new OleDbConnection(connStr);
            conn.Open();

            string sqlStr = "SELECT * FROM tblArticle WHERE ID=" + id;

            OleDbCommand cmd = new OleDbCommand(sqlStr, conn);
            OleDbDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                views = Convert.ToInt32(reader["Views"]);
            }
            reader.Close();
            conn.Close();

            return views;
        }

        [WebMethod]
        public int updateViews(int id)
        {
            int views = getViews(id) +1;

            string connStr = @"Provider=Microsoft.ACE.OLEDB.12.0;data source=" +
                Path.GetFullPath("../AssignmentSite/App_Data/PasteDB.accdb");

            OleDbConnection conn = new OleDbConnection(connStr);
            conn.Open();

            string sqlStr = "UPDATE tblArticle " +
                    "SET Views = " + views + " " +
                    "WHERE ID=" + id + ";";

            OleDbCommand cmd = new OleDbCommand(sqlStr, conn);

            int count = cmd.ExecuteNonQuery();

            conn.Close();

            return views;
        }
    }
}
