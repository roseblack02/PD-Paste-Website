using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using AssignmentSite.DAL;

namespace AssignmentSite.BLL
{
    public class Articles
    {
        public static DataSet getArticles()
        {
            return DataAccess.getAllArticles();
        }
    }
}