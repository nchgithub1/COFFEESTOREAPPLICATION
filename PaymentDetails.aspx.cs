using System;
using System.Collections.Generic;
using System.Linq;

namespace CoffeeStore1
{
    //PaymentDetails page to validate information entered by the user and to store payment details information in the SQL database.
    public partial class PaymentDetails : System.Web.UI.Page
    {
        private Boolean PaymentExistsYN
        {
            get { return Boolean.Parse(Session["PaymentExistsYN"].ToString()); }
            set { Session["PaymentExistsYN"] = value; }
        }
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
        private float grandAmount
        {
            get { return float.Parse(Session["grandAmount"].ToString()); }
            set { Session["grandAmount"] = value; }
        }
        private bool _ClearedYN;
        private bool ClearedYN
        {
            get { return _ClearedYN; }
            set { _ClearedYN = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                  //  txtShippingAddress.ReadOnly = false;
                    if (Request.QueryString["paymentID"] != null)
                    {
                        paymentId = int.Parse(Request.QueryString["paymentID"].ToString());
                        Session["PaymentID"] = paymentId;
                    }
                    if (Request.QueryString["GrandAmount"] != null)
                    {
                        grandAmount = float.Parse(Request.QueryString["GrandAmount"].ToString());
                    }
                    ClearedYN = false;
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
                            txtCardNumber.Text = t.cardnumber;
                            txtNameonCard.Text = t.nameoncard;
                            txtSecurityCode.Text = t.securitycode;
                            txtZipCode.Text = t.zipcode;
                            txtExpiryDate.Text = t.expirydatemmyy;
                            lstProvider.SelectedValue = t.provider;
                            if (ClearedYN == false)
                            {
                                lblProviderStatus.Text = t.status;
                            }
                            txtShippingAddress.Text = t.shippingaddress;
                            ckShippingUserContactAddress.Checked = t.shippingusercontactaddress;
                            orderId = t.orderid;
                            paymentId = t.id;
                        }

                        PaymentExistsYN = true;
                    }
                    else
                    {
                        PaymentExistsYN = false;
                        orderId = paymentId = 0;
                    }
                }
                else
                {
                    PaymentExistsYN = false;
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
            txtCardNumber.Text = txtNameonCard.Text = txtSecurityCode.Text =
            txtZipCode.Text = txtExpiryDate.Text = lblProviderStatus.Text = txtShippingAddress.Text = string.Empty;
            lstProvider.SelectedIndex = -1;
            ckShippingUserContactAddress.Checked = false;
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                int orderID, rowsOrderUpdated, rowsOrderItemsAdded, rowsOrderItemsUpdated, rowsPaymentUdated;
                rowsOrderItemsAdded = rowsOrderUpdated = rowsOrderItemsUpdated = rowsPaymentUdated = 0;
                paymentId = int.Parse(Request.QueryString["paymentID"].ToString());
                grandAmount = float.Parse(Request.QueryString["GrandAmount"].ToString());
                if (PaymentExistsYN == false)
                {
                    //Add new order details with default paymentID = 0
                    orderID = Model.Payment.AddOrderDetails(int.Parse(Session["UserId"].ToString()), grandAmount, Session["UserName"].ToString());
                    if (orderID > 0)
                    {
                        List<SelectCartItem_BySessionID_1> resCartItems = Model.Product.GetCartItembySessionID(int.Parse(Session["ShoppingSessionID"].ToString()));
                        var query = from lst in resCartItems
                                    select new
                                    {
                                        productid = lst.product_id
                                    };
                        if (query != null)
                        {
                            foreach (var t in query)
                            {
                                //Add new order items for new orderID created
                                rowsOrderItemsAdded = rowsOrderItemsAdded + Model.Payment.AddOrderItems(orderID, t.productid, Session["UserName"].ToString());
                            }
                        }
                        if (rowsOrderItemsAdded > 0)
                        {
                            //Add new payment details
                            paymentId = Model.Payment.AddPayment(orderID, grandAmount, lstProvider.SelectedValue.ToString(), "Approved", txtNameonCard.Text.Trim(),
                                txtCardNumber.Text.Trim(), txtExpiryDate.Text, txtSecurityCode.Text, txtZipCode.Text, ckShippingUserContactAddress.Checked, txtShippingAddress.Text, Session["UserName"].ToString());
                            PaymentExistsYN = true;
                            Session["PaymentID"] = paymentId;
                            Response.Redirect("OrderSummary.aspx?paymentID=" + paymentId.ToString() + "&GrandAmount=" + grandAmount.ToString(), false);
                        }
                    }
                }
                else
                {
                    if (paymentId != 0 && orderId != 0)
                    {
                        //Update Order details
                        rowsOrderUpdated = Model.Payment.UpdateOrderDetails(orderId, int.Parse(Session["UserId"].ToString()), grandAmount, paymentId, Session["UserName"].ToString());

                        List<SelectCartItem_BySessionID_1> resCartItems = Model.Product.GetCartItembySessionID(int.Parse(Session["ShoppingSessionID"].ToString()));
                        var query = from lst in resCartItems
                                    select new
                                    {
                                        productid = lst.product_id
                                    };

                        //Update order items for orderID
                        rowsOrderItemsUpdated = rowsOrderItemsUpdated + Model.Payment.UpdateOrderItems(orderId, Session["UserName"].ToString());
                        if (query != null)
                        {
                            foreach (var t in query)
                            {
                                //Add new order items for new orderID created
                                rowsOrderItemsAdded = rowsOrderItemsAdded + Model.Payment.AddOrderItems(orderId, t.productid, Session["UserName"].ToString());
                            }
                        }
                        if (rowsOrderItemsUpdated > 0 || rowsOrderItemsAdded > 0)
                        {
                            //update existing payment
                            rowsPaymentUdated = Model.Payment.UpdatePayment(paymentId, orderId, grandAmount, lstProvider.SelectedValue.ToString(), "Approved", txtNameonCard.Text.Trim(),
                                txtCardNumber.Text.Trim(), txtExpiryDate.Text, txtSecurityCode.Text, txtZipCode.Text, ckShippingUserContactAddress.Checked, txtShippingAddress.Text, Session["UserName"].ToString());
                            PaymentExistsYN = true;
                            Session["PaymentID"] = paymentId;
                            Response.Redirect("OrderSummary.aspx?paymentID=" + paymentId.ToString() + "&GrandAmount=" + grandAmount.ToString(), false);
                        }
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
        protected void btnClear_Click(object sender, EventArgs e)
        {
            try
            {
                ClearData();
                ClearedYN = true;
                LoadData(paymentId);
            }
            catch (Exception ex)
            {
                int rowsAdded = 0;
                rowsAdded = Model.User.AddLogMessage(ex.Message, Session["UserName"].ToString());
                Response.Redirect("Error.aspx", false);
            }
        }

        protected void ckShippingUserContactAddress_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                if (ckShippingUserContactAddress.Checked == true)
                {
                    List<SelectUser_Byid_1> res = Model.User.GetUserById(int.Parse(Session["UserId"].ToString()));
                    if (res.Count > 0)
                    {
                        txtShippingAddress.Text = res[0].address + ", " + res[0].city + ", " + res[0].state + ", " + res[0].ZipCode;
                        txtShippingAddress.ReadOnly = true;
                    }
                    else
                    {
                        LoadData(paymentId);
                    }
                }
                else
                { 
                    txtShippingAddress.ReadOnly = false; 
                }
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