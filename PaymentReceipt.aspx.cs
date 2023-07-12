using System;

namespace CoffeeStore1
{
    public partial class PaymentReceipt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    if(Session["PaymentID"] !=null) { 
                    //delete payment details for 
                    int paymentID = int.Parse(Session["PaymentID"].ToString());
                    int ShoppingSessionID = int.Parse(Session["ShoppingSessionID"].ToString());
                    ClearData(paymentID, ShoppingSessionID);
                    Session["grandAmount"] = Session["OrderID"] = Session["PaymentID"] = null;
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
        private void ClearData(int paymentID, int shoppingSessionID)
        {
            try
            {
                int rowsDeleted = Model.Payment.DeletePaymentOrdersCartItems(paymentID, shoppingSessionID, Session["UserName"].ToString());
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