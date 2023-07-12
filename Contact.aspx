<%@ Page Title="Contact" Language="C#" MasterPageFile="~/MSite.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CoffeeStore1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- contact section start -->
    <div class="contact_section layout_padding">
        <div class="container">
            <h1 class="contact_text">Contact Us</h1>
        </div>
    </div>
    <div class="contact_section_2 layout_padding">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 padding_0">
                    <div class="mail_section">
                        <div class="email_text">
                            <div class="form-group">
                                <h3>Headquarter Office</h3>
                                <h4>For general inquiries & wholesale orders please contact our HQ located in Brea, CA. </h4>

                                580 N. Berry St.<br />
                                Brea, CA 92821<br />
                                <abbr title="Phone">P:</abbr>
                                (714) 784-6369
                                <br />
                                <strong>Support:</strong>   <a href="mailto:Support@coffestore.com">Support@coffestore.com</a><br />
                                <strong>Marketing:</strong> <a href="mailto:Marketing@coffeestore.com">Marketing@coffeestore.com</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 padding_0">
                    <div class="map-responsive">

                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3310.537052397223!2d-117.90884652355562!3d33.92731267320433!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80dcd54196c377b3%3A0xa5dada1b1dc1ce20!2s580%20N%20Berry%20St%2C%20Brea%2C%20CA%2092821!5e0!3m2!1sen!2sus!4v1688752130319!5m2!1sen!2sus" width="600" height="508" frameborder="0" style="border: 0; width: 100%;"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
