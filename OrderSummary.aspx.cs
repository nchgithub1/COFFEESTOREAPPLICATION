using System;
using System.Collections.Generic;
using System.Linq;

namespace CoffeeStore1
{
    public partial class OrderSummary : System.Web.UI.Page
    {
        private int orderId
        {
            get { return int.Parse(Session["OrderID"].ToString()); }
            set { Session["OrderID"] = value; }
        }
        private int paymentId
        {
            get { return int.Parse(Session["PaymentID"].ToString()); }
            set { Session["PaymentID"] = value; }
        }
        private double grandAmount
        {
            get { return double.Parse(Session["grandAmount"].ToString()); }
            set { Session["grandAmount"] = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    if (Request.QueryString["paymentID"] != null)
                    {
                        paymentId = int.Parse(Request.QueryString["paymentID"].ToString());
                        Session["PaymentID"] = paymentId;
                    }
                    if (Request.QueryString["GrandAmount"] != null)
                    {
                        grandAmount = double.Parse(Request.QueryString["GrandAmount"].ToString());
                    }
                    ClearData();
                    LoadData(paymentId);
                }
            }
            catch (Exception ex)
            {
                int rowsAdded = 0;
                rowsAdded = Model.User.AddLogMessage(ex.Message, Session["UserName"].ToString());
                Response.Redirect("Error.aspx", false);
            }
        }

        private void LoadData(int paymentID)
        {
            try
            {
                ClearData();
                double subTotal, salesTax, Total;
                subTotal = salesTax = Total = 0.00;
                if (paymentID > 0)
                {
                    Session["PaymentID"] = paymentId;
                    List<SelectPayment_details_ById_1> res = Model.Payment.GetPaymentDetails_ByID(paymentID);
                    var query = from lst in res
                                select new
                                {
                                    id = lst.id,
                                    orderid = lst.order_id,
                                    totalamount = lst.amount,
                                    provider = lst.provider,
                                    status = lst.status,
                                    nameoncard = lst.NameonCard,
                                    cardnumber = lst.CardNumber,
                                    expirydatemmyy = lst.ExpiryDateMMYY,
                                    securitycode = lst.SecurityCode,
                                    zipcode = lst.zipCode,
                                    shippingaddress = lst.ShippingAddress,
                                    shippingusercontactaddress = lst.ShippingUserContactAddress
                                };
                    if (query != null)
                    {
                        foreach (var t in query)
                        {
                            txtPaymentInformation.Text = "Payment Method \n" + t.provider + " " + t.nameoncard + "  " + t.cardnumber
                                + "\nExpiry: " + t.expirydatemmyy;

                            txtShippingAddress.Text = t.shippingaddress;
                            orderId = t.orderid;
                            paymentId = t.id;
                        }
                        lblEstimatedDelivery.Text = "Estimated delivery " + DateTime.Now.AddDays(3).Date.ToString("MM/dd/yyyy");

                        subTotal = Math.Round(subTotal + double.Parse(grandAmount.ToString()), 2);

                        lblSubTotalValue.Text = "$" + subTotal.ToString();

                        salesTax = Math.Round(((subTotal * 7.25) / 100), 2);
                        lblSalesTaxValue.Text = "$" + salesTax.ToString();
                        Total = Math.Round((subTotal + salesTax), 2);
                        lblTotalValue.Text = "$" + Total.ToString();
                    }
                    else
                    {
                        orderId = paymentId = 0;
                    }
                }
                else
                {
                    orderId = paymentId = 0;
                }
            }
            catch (Exception ex)
            {
                int rowsAdded = 0;
                rowsAdded = Model.User.AddLogMessage(ex.Message, Session["UserName"].ToString());
                Response.Redirect("Error.aspx", false);
            }
        }

        public void ClearData()
        {
            txtShippingAddress.Text = txtPaymentInformation.Text = lblEstimatedDelivery.Text =
            lblSubTotalValue.Text = lblSalesTaxValue.Text = lblTotalValue.Text = string.Empty;
        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("PaymentReceipt.aspx", false);
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