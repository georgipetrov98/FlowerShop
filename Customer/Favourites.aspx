<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Favourites.aspx.cs" Inherits="FlowerShopFinal_v._02.Favourites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%-- Front end for favourites --%>
    <style>
        img {
            max-width: 100px !important
        }

        .shopping_button {
            margin: unset !important
        }

        .shopping_cart_main {
            text-align: right;
        }

        td, th {
            padding: 10px 20px;
            text-align: center;
            border: 1px solid #E5E5E5;
        }
    </style>

    <!--Code Here-->

    <!--Start clothing product area -->
    <div class="clothing_product_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                    <div class="catagory_price_color">
                        <div class="catagory_area">
                            <h2>CATEGORY</h2>
                            <ul class="catagory">
                                <li><a href="/404"><i class="fa fa-angle-right"></i>LEARNING</a> <span>(4)</span></li>
                                <li><a href="/404"><i class="fa fa-angle-right"></i>LIGHTING</a><span>(6)</span></li>
                                <li><a href="/404"><i class="fa fa-angle-right"></i>LIVING ROOMS</a><span>(8)</span></li>
                                <li><a href="/404"><i class="fa fa-angle-right"></i>LAMP</a><span>(10)</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="popular_tag_area">
                        <div class="popular_items">
                            <h2>POPULAR TAGS</h2>
                            <ul id="single_popular">
                                <li><a href="/404">Nunc</a></li>
                                <li><a href="/404">aliquet</a></li>
                                <li><a href="/404">convallis</a></li>
                                <li><a href="/404">eros</a></li>
                                <li><a href="/404">facilisis</a></li>
                                <li><a href="/404">fashion</a></li>
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
                                    <h2>BESTSELLERS</h2>
                                </div>
                            </div>
                            <div class="clothing_carousel_list">
                                <div class="single_clothing_product">
                                    <div class="clothing_item">
                                        <img runat="server" src="~/Content/img/product/pr4.png" alt="" />
                                        <div class="product_clothing_details">
                                            <h2><a href="/404">Nam ullamcorper vive</a></h2>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <p>$20.00</p>
                                        </div>
                                    </div>
                                    <div class="clothing_item">
                                        <img runat="server" src="~/Content/img/product/pr5.png" alt="" />
                                        <div class="product_clothing_details">
                                            <h2><a href="/404">Nam ullamcorper vive</a></h2>
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
                                            <h2><a href="/404">Nam ullamcorper vive</a></h2>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <p>$12.00</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="single_clothing_product">
                                    <div class="clothing_item">
                                        <img runat="server" src="~/Content/img/bestseller/10.jpg" alt="" />
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
                    <div class="wishlist-page-area cart-page-main-area">
                        <div class="sec-heading-area">
                            <h2>My Wishlist</h2>
                        </div>
                        <div class="container" style="max-width: 1300px!important">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                                    <!-- ASP.NET STARTS HERE -->

                                    <h3>
                                        <asp:Label ID="lblTest" runat="server" Text="Label" Visible="false">Product out of stock!</asp:Label></h3>
                                    <p>Product Details &amp; description</p>
                                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2">
                                        <AlternatingItemTemplate>
                                            <tr style="">
                                                <td>
                                                    <asp:Image ID="flower_image_urlLabel" runat="server" ImageUrl='<%# Eval("flower_image_url") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("flower_description") %>' />
                                                </td>
                                                <td>£
                                                        <asp:Label ID="flower_priceLabel" runat="server" Text='<%# Eval("flower_price") %>' />
                                                </td>
                                                <td>
                                                    <asp:Button ID="Button1" runat="server" Text="Add To Cart" OnClick="Button1_Click1" CommandArgument='<%# Eval("flower_id") %>' /></td>
                                                <td>
                                                    <asp:Button ID="DeleteButton" runat="server" Text="Delete" OnClick="DeleteButton_Click" CommandArgument='<%# Eval("flower_id") %>' />
                                                </td>
                                            </tr>
                                        </AlternatingItemTemplate>
                                        <EditItemTemplate>
                                            <tr style="">
                                                <td>
                                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="flower_priceTextBox" runat="server" Text='<%# Bind("flower_price") %>' />
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="flower_image_urlTextBox" runat="server" Text='<%# Bind("flower_image_url") %>' />
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("flower_description") %>' />
                                                </td>
                                            </tr>
                                        </EditItemTemplate>
                                        <EmptyDataTemplate>
                                            <table runat="server" style="">
                                                <tr>
                                                    <td>No data was returned.</td>
                                                </tr>
                                            </table>
                                        </EmptyDataTemplate>
                                        <InsertItemTemplate>
                                            <tr style="">
                                                <td>
                                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="flower_priceTextBox" runat="server" Text='<%# Bind("flower_price") %>' />
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="flower_image_urlTextBox" runat="server" Text='<%# Bind("flower_image_url") %>' />
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("flower_description") %>' />
                                                </td>
                                            </tr>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <tr style="">
                                                <td>
                                                    <asp:Image ID="flower_image_urlLabel" runat="server" ImageUrl='<%# Eval("flower_image_url") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("flower_description") %>' />
                                                </td>
                                                <td>£
                                                        <asp:Label ID="flower_priceLabel" runat="server" Text='<%# Eval("flower_price") %>' />
                                                </td>
                                                <td>
                                                    <asp:Button ID="Button1" runat="server" Text="Add To Cart" OnClick="Button1_Click1" CommandArgument='<%# Eval("flower_id") %>' /></td>
                                                <td>
                                                    <asp:Button ID="DeleteButton" runat="server" Text="Delete" OnClick="DeleteButton_Click" CommandArgument='<%# Eval("flower_id") %>' />
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                        <LayoutTemplate>
                                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                                <tr id="formatThis" runat="server" style="">
                                                    <th runat="server">Flower</th>
                                                    <th runat="server">Description</th>
                                                    <th runat="server">Price</th>
                                                    <th runat="server">Shop</th>
                                                    <th runat="server">Remove</th>
                                                </tr>
                                                <tr id="itemPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                            </td>
                                        </LayoutTemplate>
                                        <SelectedItemTemplate>
                                            <tr style="">
                                                <td>
                                                    <asp:Label ID="flower_priceLabel" runat="server" Text='<%# Eval("flower_price") %>' />
                                                </td>
                                                <td>
                                                    <asp:Image ID="flower_image_urlLabel" runat="server" ImageUrl='<%# Eval("flower_image_url") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("flower_description") %>' />
                                                </td>
                                            </tr>
                                        </SelectedItemTemplate>
                                    </asp:ListView>

                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" SelectCommand="SELECT FlowersFavourites.flower_id, Flowers.flower_price,Flowers.flower_description, Flowers.flower_image_url FROM Flowers INNER JOIN FlowersFavourites ON Flowers.flower_id = FlowersFavourites.flower_id INNER JOIN Favourites ON FlowersFavourites.favourite_id = Favourites.favourite_id INNER JOIN Users ON Favourites.user_id = Users.user_id WHERE (Users.user_id = @Param1) GROUP BY FlowersFavourites.flower_id, Flowers.flower_price,Flowers.flower_description, Flowers.flower_image_url" DeleteCommand="DELETE FROM FlowersFavourites WHERE FlowersFavourites.flower_favourite_id = @Param2
">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Param2" Type="Int32" />
                                        </DeleteParameters>
                                        <SelectParameters>
                                            <asp:SessionParameter Name="Param1" SessionField="UserID" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>

                                    <asp:SqlDataSource ID="testa" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" DeleteCommand="DELETE FROM [FlowersFavourites] WHERE [flower_favourite_id] = @flower_favourite_id" InsertCommand="INSERT INTO [FlowersFavourites] ([favourite_id], [flower_id]) VALUES (@favourite_id, @flower_id)" SelectCommand="SELECT * FROM [FlowersFavourites]" UpdateCommand="UPDATE [FlowersFavourites] SET [favourite_id] = @favourite_id, [flower_id] = @flower_id WHERE [flower_favourite_id] = @flower_favourite_id">
                                        <DeleteParameters>
                                            <asp:Parameter Name="flower_favourite_id" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="favourite_id" Type="Int32" />
                                            <asp:Parameter Name="flower_id" Type="Int32" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="favourite_id" Type="Int32" />
                                            <asp:Parameter Name="flower_id" Type="Int32" />
                                            <asp:Parameter Name="flower_favourite_id" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ASP.NET ENDS HERE -->
                </div>
            </div>
        </div>
    </div>
    <!--End clothing product area -->

</asp:Content>
