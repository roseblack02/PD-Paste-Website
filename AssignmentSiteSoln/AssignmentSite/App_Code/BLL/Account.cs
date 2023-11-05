using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AssignmentSite.DAL;

namespace AssignmentSite.BLL
{
    public class Account
    {
        private String username, password;
        private int id;

        public Account()
        {

        }

        //set and get username
        public void setUsername(String username)
        {
            this.username = username;
        }

        public string getUsername()
        {
            return username;
        }

        //set and get views
        public void setPassword(String password)
        {
            this.password = password;
        }

        public String getPassword()
        {
            return password;
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

        //get login id
        public void login(String username, String password)
        {
            id = DataAccess.validatelogin(username, password);
        }


    }
}