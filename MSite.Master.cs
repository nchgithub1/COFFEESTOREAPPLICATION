using System;
using System.Web.UI;

namespace CoffeeStore1
{
    public partial class MSiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserFullName"] != null)
                {
                    lblLogged_User.Text = "Hello " + Session["UserFullName"].ToString();
                    pnlGuest_Panel.Visible = false;
                    pnlLogged_Panel.Visible = true;
                }
                else
                {
                    lblGuest_User.Text = "Hello Guest!";
                    pnlGuest_Panel.Visible = true;
                    pnlLogged_Panel.Visible = false;
                }
            }
        }
    }
}