<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="FlowerShopFinal_v._02.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        table {
    width: 100%;
}
        #MainContent_FormView1_inquiry_quantityTextBox{
                background: #f5f6f8 none repeat scroll 0 0;
    border: 1px solid #e9eaec;
    min-height: 240px;
    padding: 14px 20px;
    width: 100%;
        }
    </style>

    <div class="breadcrumbs-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="breadcrumb-single blog_top_area">
                    <ul id="breadcrumbs">
                        <li><a href=""><i class="fa fa-home"></i>Home</a></li>
                        <li><span>Ι</span></li>
                        <li>Contact Us</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Start company details area -->
<div class="company_contact_details">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="get_touch">
                    <h2>GET IN TOUCH WITH US</h2>
                    <p>We possess within us two minds. So far I have written only of the conscious mind. I would now like to introduce you to your second mind, the hidden and mysterious subconscious. Our subconscious mind contains such power and complexity that it literally staggers the imagination.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <div class="contact_us_info">
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" SelectCommand="SELECT [inquiry_id], [user_name], [user_email], [inquiry_subject], [inquiry_message] FROM [Inquiries]" DeleteCommand="DELETE FROM [Inquiries] WHERE [inquiry_id] = @inquiry_id" InsertCommand="INSERT INTO [Inquiries] ([user_name], [user_email], [inquiry_subject], [inquiry_message]) VALUES (@user_name, @user_email, @inquiry_subject, @inquiry_message)" UpdateCommand="UPDATE [Inquiries] SET [user_name] = @user_name, [user_email] = @user_email, [inquiry_subject] = @inquiry_subject, [inquiry_message] = @inquiry_message WHERE [inquiry_id] = @inquiry_id">
        <DeleteParameters>
            <asp:Parameter Name="inquiry_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="user_name" Type="String" />
            <asp:Parameter Name="user_email" Type="String" />
            <asp:Parameter Name="inquiry_subject" Type="String" />
            <asp:Parameter Name="inquiry_message" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="user_name" Type="String" />
            <asp:Parameter Name="user_email" Type="String" />
            <asp:Parameter Name="inquiry_subject" Type="String" />
            <asp:Parameter Name="inquiry_message" Type="String" />
            <asp:Parameter Name="inquiry_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

                    <!-- ADD NEW INQUIRY -->

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="inquiry_id" DataSourceID="SqlDataSource1">
        <InsertItemTemplate>
            Name:
            <asp:TextBox ID="inquiry_subjectTextBox" runat="server" Text='<%# Bind("user_name") %>' />
            <br />
            Email:
            <asp:TextBox ID="flower_idTextBox" runat="server" Text='<%# Bind("user_email") %>' />
            <br />
            Subject:
            <asp:TextBox ID="inquiry_messageTextBox" runat="server" Text='<%# Bind("inquiry_subject") %>' />
            <br />
            Message:
            <asp:TextBox ID="inquiry_quantityTextBox" runat="server" TextMode="MultiLine" Rows="10" Text='<%# Bind("inquiry_message") %>' />
            <br /><div class="controls">
            <asp:Button CssClass="btn btn-large btn-primary submit" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:Button CssClass="btn btn-large btn-primary submit" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></div>
        </InsertItemTemplate>
        <ItemTemplate><div class="controls">
    <asp:Button CssClass="btn btn-large btn-primary submit"  ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="CONTACT US HERE" /></div>
        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" InsertCommand="INSERT INTO [INQUIRIES](user_name, user_email, inquiry_subject, inquiry_message) VALUES (@user_name, @user_email, @inquiry_subject, @inquiry_message)" ProviderName="<%$ ConnectionStrings:ConnectionStringFlowers.ProviderName %>" SelectCommand="SELECT inquiry_id, user_name, user_email, inquiry_subject, inquiry_message FROM [INQUIRIES]">
        <InsertParameters>
            <asp:Parameter Name="inquiry_id" Type="String" />
            <asp:Parameter Name="user_name" Type="String" />
            <asp:Parameter Name="user_email" Type="String" />
            <asp:Parameter Name="inquiry_subject" Type="String" />
            <asp:Parameter Name="inquiry_message" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="company_right_area">
                    <h6>INFORMATION</h6>
                    <div class="contact_addon_content">
                        <p><span><i class="fa fa-map-marker"></i></span> Your Company Name JSC 1332 Your Street, City World, US</p>
                        <p><span><i class="fa fa-envelope"></i></span> info@yourcompany.com</p>
                        <p><span><i class="fa fa-phone"></i></span> (+1 223) 334 3434</p>
                    </div>
                </div>
                <div class="company_right_hour">
                    <h6>BUSINESS HOURS</h6>
                    <p>Monday &ndash; Friday: 9am to 20 pm Saturday: 9am to 17pm Sunday: day off</p>
                    <div class="single_icons_contact">
                        <ul id="social_contact_icon">
                            <li><a href="#" class="black-tooltip s-1" title="" data-placement="top" data-toggle="tooltip" data-original-title="Follow us Facebook"><i class="fa fa-facebook"></i> </a></li>
                            <li><a href="#" class="black-tooltip s-2" title="" data-placement="top" data-toggle="tooltip" data-original-title="Follow us Twitter"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#" class="black-tooltip s-3" title="" data-placement="top" data-toggle="tooltip" data-original-title="Follow us Google-plus"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#" class="black-tooltip s-4" title="" data-placement="top" data-toggle="tooltip" data-original-title="Follow us Pinterest"><i class="fa fa-pinterest"></i></a></li>
                            <li><a href="#" class="black-tooltip s-5" title="" data-placement="top" data-toggle="tooltip" data-original-title="Follow us Behance"><i class="fa fa-behance"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
