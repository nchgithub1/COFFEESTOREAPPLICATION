<%@ Page Title="About" Language="C#" MasterPageFile="~/MSite.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CoffeeStore1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <div class="about_section layout_padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="about_taital_main">
                            <div class="about_taital">Coffee Store</div>
                            <p class="about_text">
                                The Future of Coffee Store. 
                                We know that a solid cup of coffee can set the tone of your day.  This is why we will always provide the highest quality germinated coffee beans through constant innovation.  Our goal is to put a smile on your face and become the heart of your community.  Whether our coffee shop is a place where you study, need to be creative, catch up with friends or rekindle relationships—we’re here for you.
                            </p>
                            <div class="read_bt"><a runat="server" href="~/">SHOP NOW</a></div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="about_img">
                            <img src="images/about-img.png">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
