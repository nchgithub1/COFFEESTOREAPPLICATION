using System.Collections.Generic;
using System.Linq;

namespace CoffeeStore1.Model
{
    public class User
    {
        //User class defines functions to display user(s) by  userid, display user validity and get list of users.
        public static List<SelectUserValidYN_1> SelectUserValidYN(string username, string passwd)
        {
            using (CoffeeEntities e = new CoffeeEntities())
            {
                return e.SelectUserValidYN(username, passwd).ToList();
            }
        }

        public static List<SelectUser_1> GetUser()
        {
            using (CoffeeEntities e = new CoffeeEntities())
            {
                return e.SelectUser().ToList();
            }
        }

        public static List<SelectUser_Byid_1> GetUserById(int userID)
        {
            using (CoffeeEntities e = new CoffeeEntities())
            {
                return e.SelectUser_Byid(userID).ToList();
            }
        }
        //Methods to update existing user, add new user, add shopping session and add log message 
        public static int UpdateUser(int userid, string username, string passwd, string firstname, string lastname, string address,
                                     string city, string state, string zipcode, string telephone)
        {

            CoffeeEntities e = new CoffeeEntities();
            int rowsUpdated = (int)e.UpdateUser(userid, username, passwd, firstname, lastname, address, city,
                                                state, zipcode, telephone, username).FirstOrDefault();
            return rowsUpdated;

        }

        public static int AddUser(string username, string passwd, string firstname, string lastname, string address,
                                     string city, string state, string zipcode, string telephone)
        {

            CoffeeEntities e = new CoffeeEntities();
            int rowsUpdated = (int)e.AddUser(username, passwd, firstname, lastname, address, city, state, zipcode,
                                             telephone, username, username).FirstOrDefault();
            return rowsUpdated;
        }

        public static int AddShoppingSession(int userid, float total, string addedUser)
        {
            CoffeeEntities e = new CoffeeEntities();
            int sessionID = (int)e.addshopping_session(userid, total, addedUser).FirstOrDefault();
            return sessionID;
        }

        public static int AddLogMessage(string errorMessage,  string createdBy)
        {
            CoffeeEntities e = new CoffeeEntities();
            int rowsAdded = (int)e.AddLog(createdBy, errorMessage, createdBy).FirstOrDefault();
            return rowsAdded;
        }

    }
}