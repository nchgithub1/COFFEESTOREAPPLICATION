using System;
using System.Web;

namespace CoffeeStore1
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["PaymentExistsYN"] = Session["OrderID"] = Session["PaymentID"] = Session["grandAmount"] = 
                Session["UserFullName"] =  Session["UserId"] = Session["UserName"] = null;
                HttpContext.Current.Session.Clear();
                HttpContext.Current.Session.Abandon();
                Response.Redirect("Login.aspx", false);
            }
        }
    }
}