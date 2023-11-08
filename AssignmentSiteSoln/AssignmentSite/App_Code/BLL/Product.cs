using AssignmentSite.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AssignmentSite.App_Code.BLL
{
    public class Product
    {
        private String name, image, link;
        private int id, stock;
        private double price;

        public Product()
        {

        }

        //set and get name
        public void setName(String name)
        {
            this.name = name;
        }

        public string getName()
        {
            return name;
        }

        //set and get link
        public void setLink(String link)
        {
            this.link = link;
        }

        public string getLink()
        {
            return link;
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

        //set and get stock
        public void setStock(int stock)
        {
            this.stock = stock;
        }

        public int getStock()
        {
            return stock;
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

        //set and get price
        public void setPrice(int price)
        {
            this.price = price;
        }

        public double getPrice()
        {
            return price;
        }

        //get product by id
        public String[] getProduct(int id)
        {
            return DataAccess.getProductByID(id);
        }

        //update product stock
        public Boolean updateStock(int id, int stock)
        {
            return DataAccess.updateStock(id, stock);
        }
    }
}