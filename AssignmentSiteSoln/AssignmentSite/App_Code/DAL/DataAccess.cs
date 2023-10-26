using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Data;
using System.Linq;
using System.Web;

namespace AssignmentSite.DAL
{
    public class DataAccess
    {
        //openConnection
        public static OleDbConnection openConnection()
        {
            string connStr = @"Provider=Microsoft.ACE.OLEDB.12.0;data source=" +
                System.Web.Hosting.HostingEnvironment.MapPath("~/App_Data/pasteDB.accdb");

            try
            {
                OleDbConnection conn = new OleDbConnection(connStr);
                conn.Open();
                return conn;
            }
            catch (Exception ex)
            {
                return null;
            }
            //string connection = "Provider =Microsoft.ACE.OLEDB.12.0; datasource=I:/Adittya/test.accdb";

        }

        //closeConnection
        public static void closeConnection(OleDbConnection cn)
        {
            cn.Close();
        }

        //get all articles
        public static DataSet getAllArticles(int id)
        {
            DataSet ds = new DataSet();

            OleDbConnection conn = openConnection();
            string sqlStr = "SELECT * FROM tblArticle WHERE FeaturedID="+id;

            OleDbDataAdapter daArticles = new OleDbDataAdapter(sqlStr, conn);
            daArticles.Fill(ds, "dtArticles");
            conn.Close();

            return ds;
        }

        //get featured articles
        public static DataSet getFeatured()
        {
            DataSet ds = new DataSet();

            OleDbConnection conn = openConnection();
            string sqlStr = "SELECT * FROM qryFeatured";

            OleDbDataAdapter daArticles = new OleDbDataAdapter(sqlStr, conn);
            daArticles.Fill(ds, "dtFeatured");
            conn.Close();

            return ds;
        }

        //update featured articles
        public static bool updateFeatured(int featuredID, int articleID)
        {
            try
            {
                OleDbConnection conn = openConnection();
                string sqlStr = "UPDATE tblFeatured " +
                    "SET ArticleID = " + articleID + " " +
                    "WHERE FeaturedID=" + featuredID;

                OleDbCommand cmd = new OleDbCommand(sqlStr, conn);

                int count = cmd.ExecuteNonQuery();

                conn.Close();

                if (count == 1)
                    return true;
                else
                    return false;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}