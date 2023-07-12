﻿using System;
using System.Web.UI;

namespace CoffeeStore1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    if (Session["UserFullName"] == null)
                    {
                        Response.Redirect("Login.aspx", false);
                    }
                }
            }
            catch (Exception ex)
            {
                int rowsAdded = 0;
                rowsAdded = Model.User.AddLogMessage(ex.Message, Session["UserName"].ToString());
                Response.Redirect("Error.aspx", false);
            }
        }

        //Adding product(s) to the shopping session's cart item(s).
        protected void btnCoffee1_Click(object sender, EventArgs e)
        {
            try
            {
                int rowsAdded = Model.Product.AddCartItem(int.Parse(Session["ShoppingSessionID"].ToString()), 4, 1, Session["UserName"].ToString());
                Response.Redirect("ShoppingCart.aspx", false);
            }
            catch (Exception ex)
            {
                int rowsAdded = 0;
                rowsAdded = Model.User.AddLogMessage(ex.Message, Session["UserName"].ToString());
                Response.Redirect("Error.aspx", false);
            }
        }

        protected void btnCoffee2_Click(object sender, EventArgs e)
        {
            try
            {
                int rowsAdded = Model.Product.AddCartItem(int.Parse(Session["ShoppingSessionID"].ToString()), 5, 1, Session["UserName"].ToString());
                Response.Redirect("ShoppingCart.aspx", false);
            }
            catch (Exception ex)
            {
                int rowsAdded = 0;
                rowsAdded = Model.User.AddLogMessage(ex.Message, Session["UserName"].ToString());
                Response.Redirect("Error.aspx", false);
            }
        }

        protected void btnCoffee3_Click(object sender, EventArgs e)
        {
            try
            {
                int rowsAdded = Model.Product.AddCartItem(int.Parse(Session["ShoppingSessionID"].ToString()), 6, 1, Session["UserName"].ToString());
                Response.Redirect("ShoppingCart.aspx", false);
            }
            catch (Exception ex)
            {
                int rowsAdded = 0;
                rowsAdded = Model.User.AddLogMessage(ex.Message, Session["UserName"].ToString());
                Response.Redirect("Error.aspx", false);
            }
        }

    }
}