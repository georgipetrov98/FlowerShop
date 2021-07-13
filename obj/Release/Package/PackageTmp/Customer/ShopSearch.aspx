<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShopSearch.aspx.cs" Inherits="FlowerShopFinal_v._02.ShopSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%-- Front end for the shop search --%>
    <style>
        .fade:not(.show) {
            opacity: 1;
        }

        .auto-style1 {
            width: 230px;
        }
    </style>

    <!--Start clothing product area -->
    <div class="clothing_product_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                    <div class="catagory_price_color">
                        <div class="catagory_area">
                            <h2>CATEGORY</h2>
                            <ul class="catagory">
                                <li><a href="/404"><i class="fa fa-angle-right"></i>Carnation</a> <span>(4)</span></li>
                                <li><a href="/404"><i class="fa fa-angle-right"></i>Yellow Rose</a><span>(6)</span></li>
                                <li><a href="/404"><i class="fa fa-angle-right"></i>Gladiolus</a><span>(8)</span></li>
                                <li><a href="/404"><i class="fa fa-angle-right"></i>Magnolia</a><span>(10)</span></li>
                            </ul>
                        </div>
                        <div class="priceing_area">
                            <h2>Price</h2>
                            <div class="info_widget">
                                <div class="price_filter">
                                    <div id="slider-range"></div>
                                    <div class="price_slider_amount">
                                        <input type="text" id="amount" name="price" placeholder="Add Your Price" />
                                        <input type="submit" value="Search" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="catagory_area">
                            <h2>COLOR</h2>
                            <ul class="catagory">
                                <li><a href="/404"><i class="fa fa-angle-right"></i>BLACK</a> <span>(1)</span></li>
                                <li><a href="/404"><i class="fa fa-angle-right"></i>BLUE</a><span>(2)</span></li>
                                <li><a href="/404"><i class="fa fa-angle-right"></i>GREEN</a><span>(8)</span></li>
                                <li><a href="/404"><i class="fa fa-angle-right"></i>GREY</a><span>(4)</span></li>
                                <li><a href="/404"><i class="fa fa-angle-right"></i>RED</a><span>(8)</span></li>
                                <li><a href="/404"><i class="fa fa-angle-right"></i>WHITE</a><span>(6)</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="popular_tag_area">
                        <div class="popular_items">
                            <h2>POPULAR TAGS</h2>
                            <ul id="single_popular">
                                <li><a href="/404">Carnation</a></li>
                                <li><a href="/404">Yellow Rose</a></li>
                                <li><a href="/404">Orchids</a></li>
                                <li><a href="/404">Gladiolus</a></li>
                                <li><a href="/404">Sunflower</a></li>
                                <li><a href="/404">Magnolia</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="popular_tag_area popular_tag_response">
                                <div class="popular_items">
                                    <h2>COMPARE PRODUCTS</h2>
                                    <div class="conpany_product_details">
                                        <p>You have no items to compare.</p>
                                        <a href="/404">
                                            <img runat="server" src="~/Content/img/banner/banner_left.jpg" alt="" /></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="popular_tag_area">
                                <div class="popular_items">
                                    <h2>Highlights</h2>
                                </div>
                            </div>
                            <div class="clothing_carousel_list">
                                <div class="single_clothing_product">
                                    <div class="clothing_item">
                                        <img runat="server" src="~/Content/img/product/pr1.png" alt="" />
                                        <div class="product_clothing_details">
                                            <h2><a href="/404">Beauty Calla Lily Bouquety</a></h2>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <p>$13.00</p>
                                        </div>
                                    </div>
                                    <div class="clothing_item">
                                        <img runat="server" src="~/Content/img/product/pr6.png" alt="" />
                                        <div class="product_clothing_details">
                                            <h2><a href="/404">Special Bouquet</a></h2>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <p>$12.00</p>
                                        </div>
                                    </div>
                                    <div class="clothing_item">
                                        <img runat="server" src="~/Content/img/product/pr8.png" alt="" />
                                        <div class="product_clothing_details">
                                            <h2><a href="/404">Breathtaking Beauty Bouquet</a></h2>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <p>$123.00</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="single_clothing_product">
                                    <div class="clothing_item">
                                        <img runat="server" src="~/Content/img/bestseller/10.jpg" alt="" />
                                        <div class="product_clothing_details">
                                            <h2><a href="/404">Cheerful Wishes Blooming Basket</a></h2>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <p>$14.00</p>
                                        </div>
                                    </div>
                                    <div class="clothing_item">
                                        <img runat="server" src="~/Content/img/bestseller/11_1.jpg" alt="" />
                                        <div class="product_clothing_details">
                                            <h2><a href="/404">Nam ullamcorper vive</a></h2>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <p>$123.00</p>
                                        </div>
                                    </div>
                                    <div class="clothing_item">
                                        <img runat="server" src="~/Content/img/bestseller/16.jpg" alt="" />
                                        <div class="product_clothing_details">
                                            <h2><a href="/404">Nam ullamcorper vive</a></h2>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <p>$123.00</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="catagory_banner">
                                <img runat="server" src="~/Content/img/banner/category.jpg" alt="" />
                            </div>
                        </div>
                    </div>
                    <div class="my_tabs">
                        <ul class="tab_style">
                            <li class="active"><a data-toggle="tab" href="#tab1"><span><i class="fa fa-th"></i></span></a></li>
                            <li><a data-toggle="tab" href="#tab2"><span><i class="fa fa-th-list"></i></span></a></li>
                        </ul>
                        <div class="limiter">
                            <label>Show</label>
                            <select>
                                <option value="">9</option>
                                <option value="" selected="selected">12</option>
                                <option value="">24</option>
                                <option value="">36</option>
                            </select>
                            per page
                        </div>
                        <div class="sort-by">
                            <label>Sort By</label>
                            <select>
                                <option value="" selected="selected">Position</option>
                                <option value="">Name</option>
                                <option value="">Price</option>
                            </select>

                            <!--- CODE STARTS HERE --->

                        </div>
                        <h3>
                            <asp:Label ID="lblTest" runat="server" Text="Label" Visible="false">Product out of stock!</asp:Label></h3>
                        <asp:Label ID="lblError" runat="server" Text="Label" Visible="false">No search results.</asp:Label>
                        <asp:ListView ID="ListView2" runat="server" DataKeyNames="flower_id" GroupItemCount="3">
                            <AlternatingItemTemplate>
                                <td runat="server">
                                    <asp:ImageButton ID="imgButton2" runat="server" ImageUrl='<%# Eval("flower_image_url") %>' Style="width: 250px" />
                                    <br />
                                    <div style="text-align: center; font-weight: bold">
                                        <asp:Label ID="lblName2" runat="server" Text='<%# Eval("flower_name") %>' /><div style="color: orangered">
                                            £<asp:Label ID="PriceLabel2" runat="server" Text='<%# Eval("flower_price") %>' />
                                        </div>

                                    </div>
                                    <div style="text-align: center;">
                                        <div style="margin-bottom: 5px; margin-top: 5px;">
                                            <asp:Button ID="Button1" runat="server" Text="Add To Cart" OnClick="Button1_Click1" CommandArgument='<%# Eval("flower_id") %>' />
                                        </div>
                                        <asp:Button ID="Button2" runat="server" Text="Add To Favourites" OnClick="Button2_Click" CommandArgument='<%# Eval("flower_id") %>' />
                                    </div>
                                </td>
                            </AlternatingItemTemplate>
                            <EmptyDataTemplate>
                                <table runat="server" style="">
                                    <tr>
                                        <td>No data was returned.</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                            <EmptyItemTemplate>
                                <td runat="server" />
                            </EmptyItemTemplate>
                            <GroupTemplate>
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </GroupTemplate>
                            <ItemTemplate>
                                <td runat="server">
                                    <asp:ImageButton ID="imgButton2" runat="server" ImageUrl='<%# Eval("flower_image_url") %>' Style="width: 250px" />
                                    <br />
                                    <div style="text-align: center; font-weight: bold">
                                        <asp:Label ID="lblName2" runat="server" Text='<%# Eval("flower_name") %>' /><div style="color: orangered">
                                            £<asp:Label ID="PriceLabel2" runat="server" Text='<%# Eval("flower_price") %>' />
                                        </div>

                                    </div>
                                    <div style="text-align: center;">
                                        <div style="margin-bottom: 5px; margin-top: 5px;">
                                            <asp:Button ID="Button1" runat="server" Text="Add To Cart" OnClick="Button1_Click1" CommandArgument='<%# Eval("flower_id") %>' />
                                        </div>
                                        <asp:Button ID="Button2" runat="server" Text="Add To Favourites" OnClick="Button2_Click" CommandArgument='<%# Eval("flower_id") %>' />
                                    </div>
                                </td>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                                <tr id="groupPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                        <td runat="server" style=""></td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <td runat="server" style="">Id:
                                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("flower_id") %>' />
                                    <br />
                                    Name:
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("flower_name") %>' />
                                    <br />
                                    Colour:
                                <asp:Label ID="ColourLabel" runat="server" Text='<%# Eval("flower_colour") %>' />
                                    <br />
                                    Category:
                                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("flower_category") %>' />
                                    <br />
                                    Price:
                                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("flower_price") %>' />
                                    <br />
                                    Image_Url:
                                <asp:Label ID="Image_UrlLabel" runat="server" Text='<%# Eval("flower_image_url") %>' />
                                    <br />
                                    Availability:
                                <asp:Label ID="AvailabilityLabel" runat="server" Text='<%# Eval("flower_availability") %>' />
                                    <br />
                                    Description:
                                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("flower_description") %>' />
                                    <br />
                                    Quantity:
                                <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("flower_quantity") %>' />
                                    <br />
                                </td>
                            </SelectedItemTemplate>
                        </asp:ListView>
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--End clothing product area -->
</asp:Content>
