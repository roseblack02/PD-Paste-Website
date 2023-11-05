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

        //login
        public static int validatelogin(String username, String password)
        {
            int userID = -1;

            try
            {
                OleDbConnection conn = openConnection();

                String sql = "SELECT * FROM tblAccount WHERE " +
                    "Username='" + username + "' AND PWord='" + password + "';";

                OleDbCommand cmd = new OleDbCommand(sql, conn);
                OleDbDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    userID = Convert.ToInt32(reader["ID"]);
                }

                reader.Close();
                closeConnection(conn);
            }
            catch (Exception ex)
            {

            }
            return userID;
        }

        //articles
        //get all articles
        public static DataSet getAllArticles()
        {
            DataSet ds = new DataSet();

            OleDbConnection conn = openConnection();
            string sqlStr = "SELECT * FROM tblArticle";

            OleDbDataAdapter daArticles = new OleDbDataAdapter(sqlStr, conn);
            daArticles.Fill(ds, "dtArticles");
            conn.Close();

            return ds;
        }

        //get articles by id
        public static String[] getArticleByID(int id)
        {
            OleDbConnection conn = openConnection();
            string sqlStr = "SELECT * FROM tblArticle WHERE ID=" + id;

            OleDbCommand cmd = new OleDbCommand(sqlStr, conn);
            OleDbDataReader reader = cmd.ExecuteReader();

            String title = "", category = "", image = "", date = "", link = "";
            int views = 0;

            while (reader.Read())
            {
                title = reader["Title"].ToString();
                category = reader["Category"].ToString();
                image = reader["ImageURL"].ToString();
                views = Convert.ToInt32(reader["Views"]);
                date = reader["DatePublished"].ToString();
                link = reader["Link"].ToString();
            }
            reader.Close();
            conn.Close();

            string[] details = { title, category, image, views.ToString(), date, link };


            return details;
        }

        //count number of articles
        public static int getArticleCount()
        {
            OleDbConnection conn = openConnection();
            string sqlStr = "SELECT COUNT(ID) FROM tblArticle";

            OleDbCommand cmd = new OleDbCommand(sqlStr, conn);

            int count = (int)cmd.ExecuteScalar();

            conn.Close();

            return count;
        }

        //update article views
        public static bool updateViews(int articleID, int views)
        {
            try
            {
                OleDbConnection conn = openConnection();
                string sqlStr = "UPDATE tblArticle " +
                    "SET Views = " + views + " " +
                    "WHERE ID=" + articleID + ";";

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

        //get featured articles by id
        public static String[] getFeaturedByID(int id)
        {
            OleDbConnection conn = openConnection();
            string sqlStr = "SELECT * FROM qryFeatured WHERE FeaturedID="+id;

            OleDbCommand cmd = new OleDbCommand(sqlStr, conn);
            OleDbDataReader reader = cmd.ExecuteReader();

            String title = "", category = "", image = "", date ="", link="";
            int views = 0;

            while (reader.Read())
            {
                title = reader["Title"].ToString();
                category = reader["Category"].ToString();
                image = reader["ImageURL"].ToString();
                views = Convert.ToInt32(reader["Views"]);
                date = reader["DatePublished"].ToString();
                link = reader["Link"].ToString();
            }
            reader.Close();
            conn.Close();

            string[] details = { title, category, image, views.ToString(), date , link};


            return details;
        }

        //update featured articles
        public static bool updateFeatured(int featuredID, int articleID)
        {
            try
            {
                OleDbConnection conn = openConnection();
                string sqlStr = "UPDATE tblFeatured " +
                    "SET ArticleID = " + articleID + " " +
                    "WHERE FeaturedID=" + featuredID + ";";

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

        //get product by id
        public static String[] getProductByID(int id)
        {
            OleDbConnection conn = openConnection();
            string sqlStr = "SELECT * FROM tblProduct WHERE ID=" + id;

            OleDbCommand cmd = new OleDbCommand(sqlStr, conn);
            OleDbDataReader reader = cmd.ExecuteReader();

            String name = "", image = "", link = "";
            int stock = 0;
            double price = 0;

            while (reader.Read())
            {
                name = reader["ProductName"].ToString();
                image = reader["ImageURL"].ToString();
                stock = Convert.ToInt32(reader["Stock"]);
                link = reader["Link"].ToString();
                price = Convert.ToDouble(reader["Price"]);
            }
            reader.Close();
            conn.Close();

            string[] details = { name, image, stock.ToString(), price.ToString(), link };

            return details;
        }
    }
}