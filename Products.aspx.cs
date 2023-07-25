using System;

namespace CoffeeStore1
{
    public partial class Products : System.Web.UI.Page
    {
        //Products page to display coffee products and to add to the shopping cart on click of buttons
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


        protected void btnCoffee4_Click(object sender, EventArgs e)
        {
            try
            {
                int rowsAdded = Model.Product.AddCartItem(int.Parse(Session["ShoppingSessionID"].ToString()), 7, 1, Session["UserName"].ToString());
                Response.Redirect("ShoppingCart.aspx", false);
            }
            catch (Exception ex)
            {
                int rowsAdded = 0;
                rowsAdded = Model.User.AddLogMessage(ex.Message, Session["UserName"].ToString());
                Response.Redirect("Error.aspx", false);
            }
        }

        protected void btnCoffee5_Click(object sender, EventArgs e)
        {
            try
            {
                int rowsAdded = Model.Product.AddCartItem(int.Parse(Session["ShoppingSessionID"].ToString()), 8, 1, Session["UserName"].ToString());
                Response.Redirect("ShoppingCart.aspx", false);
            }
            catch (Exception ex)
            {
                int rowsAdded = 0;
                rowsAdded = Model.User.AddLogMessage(ex.Message, Session["UserName"].ToString());
                Response.Redirect("Error.aspx", false);
            }
        }

        protected void btnCoffee6_Click(object sender, EventArgs e)
        {
            try
            {
                int rowsAdded = Model.Product.AddCartItem(int.Parse(Session["ShoppingSessionID"].ToString()), 9, 1, Session["UserName"].ToString());
                Response.Redirect("ShoppingCart.aspx", false);
            }
            catch (Exception ex)
            {
                int rowsAdded = 0;
                rowsAdded = Model.User.AddLogMessage(ex.Message, Session["UserName"].ToString());
                Response.Redirect("Error.aspx", false);
            }
        }
        protected void btnCoffee7_Click(object sender, EventArgs e)
        {
            try
            {
                int rowsAdded = Model.Product.AddCartItem(int.Parse(Session["ShoppingSessionID"].ToString()), 10, 1, Session["UserName"].ToString());
                Response.Redirect("ShoppingCart.aspx", false);
            }
            catch (Exception ex)
            {
                int rowsAdded = 0;
                rowsAdded = Model.User.AddLogMessage(ex.Message, Session["UserName"].ToString());
                Response.Redirect("Error.aspx", false);
            }
        }

        protected void btnCoffee8_Click(object sender, EventArgs e)
        {
            try
            {
                int rowsAdded = Model.Product.AddCartItem(int.Parse(Session["ShoppingSessionID"].ToString()), 11, 1, Session["UserName"].ToString());
                Response.Redirect("ShoppingCart.aspx", false);
            }
            catch (Exception ex)
            {
                int rowsAdded = 0;
                rowsAdded = Model.User.AddLogMessage(ex.Message, Session["UserName"].ToString());
                Response.Redirect("Error.aspx", false);
            }
        }

        protected void btnCoffee9_Click(object sender, EventArgs e)
        {
            try
            {
                int rowsAdded = Model.Product.AddCartItem(int.Parse(Session["ShoppingSessionID"].ToString()), 13, 1, Session["UserName"].ToString());
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