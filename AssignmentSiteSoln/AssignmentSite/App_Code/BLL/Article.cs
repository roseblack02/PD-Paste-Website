using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AssignmentSite.DAL;

namespace AssignmentSite.BLL
{
    public class Article
    {
        private String title, category, image, date;
        private int views, id;

        //set and get title
        public void setTitle(String title)
        {
            this.title = title;
        }

        public string getTitle()
        {
            return title;
        }

        //set and get category
        public void setCategory(String category)
        {
            this.category = category;
        }

        public string getCategory()
        {
            return category;
        }

        //set and get image
        public void setImage(String image)
        {
            this.image = image;
        }

        public string getImage()
        {
            return image;
        }

        //set and get date
        public void setDate(String date)
        {
            this.date = date;
        }

        public string getDate()
        {
            return date;
        }

        //set and get views
        public void setViews(int views)
        {
            this.views = views;
        }

        public int getViews()
        {
            return views;
        }

        //set and get id
        public void setID(int id)
        {
            this.id = id;
        }

        public int getID()
        {
            return id;
        }

        //get single featured by ID
        public String[] getFeatured(int featuredID)
        {
            return DataAccess.getFeaturedByID(featuredID);
        }

        //get 5 featured articles
        public String[][] getAllFeatured()
        {
            String[][] featured = new String[5][];

            for (int i = 0; i < 5; i++)
            {
                featured[i]=DataAccess.getFeaturedByID(i+1);
            }

            return featured;
        }

        //update featured article
        public Boolean updateFeatured(int featuredID, int articleID)
        {
            return DataAccess.updateFeatured(featuredID, articleID);
        }

        //get single article by ID
        public String[] getArticle(int id)
        {
            return DataAccess.getArticleByID(id);
        }

        //update article views
        public Boolean updateViews(int articleID, int views)
        {
            return DataAccess.updateViews(articleID, views);
        }

        //get number of articles
        public int getArticleCount()
        {
            return DataAccess.getArticleCount();
        }
    }
}