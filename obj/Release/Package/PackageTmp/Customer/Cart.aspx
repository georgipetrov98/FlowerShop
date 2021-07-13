<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="FlowerShopFinal_v._02.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%-- Front end for managing cart --%>
    <style>
        img {
            max-width: 200px !important
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

    <!--Start Shopping Cart top area -->
    <div class="shopping_cart_area">
        <div class="container" style="max-width: 1300px!important">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="cart_title">
                        <h2>Shopping Cart</h2>
                    </div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="user_id">
                        <Columns>
                            <asp:BoundField DataField="user_email" HeaderText="user_email" SortExpression="user_email" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" SelectCommand="SELECT user_email, user_id FROM Users WHERE (user_id = @user_id)">
                        <SelectParameters>
                            <asp:SessionParameter Name="user_id" SessionField="UserID" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2">
                        <AlternatingItemTemplate>
                            <tr style="">

                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" Text="Delete" OnClick="DeleteButton_Click" CommandArgument='<%# Eval("flower_id") %>' />
                                </td>
                                <td>
                                    <asp:Image ID="flower_image_urlLabel" runat="server" ImageUrl='<%# Eval("flower_image_url") %>' />
                                </td>
                                <td>£
                    <asp:Label ID="flower_priceLabel" runat="server" Text='<%# Eval("flower_price") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                                </td>
                                <td>£
                                    <asp:Label ID="SubtotalLabel" runat="server" Text='<%# Eval("Subtotal") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="">
                                <tr>
                                    <td>Your shopping cart is empty.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <ItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" Text="Delete" OnClick="DeleteButton_Click" CommandArgument='<%# Eval("flower_id") %>' />
                                </td>
                                <td>
                                    <asp:Image ID="flower_image_urlLabel" runat="server" ImageUrl='<%# Eval("flower_image_url") %>' />
                                </td>
                                <td>£
                    <asp:Label ID="flower_priceLabel" runat="server" Text='<%# Eval("flower_price") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                                </td>
                                <td>£
                                    <asp:Label ID="SubtotalLabel" runat="server" Text='<%# Eval("Subtotal") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                           
                                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                            <tr id="formatThis" runat="server" style="">
                                                <th runat="server">Remove</th>
                                                <th runat="server"></th>
                                                <th runat="server">Price</th>
                                                <th runat="server">Quantity</th>
                                                <th runat="server">Subtotal</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
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
                                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" SelectCommand="SELECT FlowersCarts.flower_id, Flowers.flower_price, Flowers.flower_image_url, COUNT(FlowersCarts.flower_id) AS 'Quantity', SUM(Flowers.flower_price) AS 'Subtotal' FROM Flowers INNER JOIN FlowersCarts ON Flowers.flower_id = FlowersCarts.flower_id INNER JOIN Carts ON FlowersCarts.cart_id = Carts.cart_id INNER JOIN Users ON Carts.user_id = Users.user_id WHERE (Users.user_id = @Param1) GROUP BY FlowersCarts.flower_id, Flowers.flower_price, Flowers.flower_image_url" DeleteCommand="DELETE FROM FlowersCarts WHERE FlowersCarts.flower_cart_id = @Param2">
                        <DeleteParameters>
                            <asp:Parameter Name="Param2" Type="Int32" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="Param1" SessionField="UserID" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
    <!--End Shopping Cart top area -->
    <!--Start Estimate Shipping,Discount,Total checkout area -->
    <div class="cart-collaterals-item">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="shopping_details_des">
                        <h2>Estimate Shipping and Tax</h2>
                        <h3>Enter your destination to get shipping and tax.</h3>
                        <div class="shopping_form">
                            <h4>Country<span>*</span></h4>
                            <select name="country_id" id="country" class="validate-select" title="Country">
                                <option value="AF">Afghanistan</option>
                                <option value="AL">Albania</option>
                                <option value="AD">Andorra</option>
                                <option value="AO">Angola</option>
                                <option value="TH">Thailand</option>
                                <option value="TM">Turkmenistan</option>
                                <option value="UG">Uganda</option>
                                <option value="UA">Ukraine</option>
                                <option value="AE">United Arab Emirates</option>
                                <option value="GB">United Kingdom</option>
                                <option value="US" selected="selected">United States</option>
                                <option value="UY">Uruguay</option>
                                <option value="UM">U.S. Outlying Islands</option>
                                <option value="VI">U.S. Virgin Islands</option>
                                <option value="UZ">Uzbekistan</option>
                                <option value="VA">Vatican City</option>
                                <option value="VE">Venezuela</option>
                                <option value="VN">Vietnam</option>
                                <option value="EH">Western Sahara</option>
                                <option value="YE">Yemen</option>
                                <option value="ZM">Zambia</option>
                                <option value="ZW">Zimbabwe</option>
                            </select>
                            <h4>State/Province</h4>
                            <select id="region_id" name="region_id" title="State/Province" class="required-entry validate-select">
                                <option value="">Please select region, state or province</option>
                                <option value="1">Alabama</option>
                                <option value="2">Alaska</option>
                                <option value="3">American Samoa</option>
                                <option value="4">Arizona</option>
                                <option value="41">New Jersey</option>
                                <option value="42">New Mexico</option>
                                <option value="43">New York</option>
                                <option value="44">North Carolina</option>
                                <option value="45">North Dakota</option>
                                <option value="46">Northern Mariana Islands</option>
                                <option value="47">Ohio</option>
                                <option value="48">Oklahoma</option>
                                <option value="51">Pennsylvania</option>
                                <option value="52">Puerto Rico</option>
                                <option value="53">Rhode Island</option>
                                <option value="54">South Carolina</option>
                                <option value="63">West Virginia</option>
                                <option value="64">Wisconsin</option>
                            </select>
                            <h4>Zip/Postal Code</h4>
                            <input class="input-text validate-postcode" type="text" name="estimate_postcode" value="">
                            <div class="review_button product_tag_add">
                                <button type="submit" title="Submit Review" class="button">Get a Quote</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="shopping_details_des">
                        <h2>Discount Codes</h2>
                        <h3>Enter your coupon code if you have one.</h3>
                        <div class="shopping_form">
                            <input class="input-text validate-postcode" type="text" name="estimate_postcode" value="">
                            <div class="review_button product_tag_add">
                                <button type="submit" title="Submit Review" class="button">Apply Coupon</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="total_price" style="text-align: right; text-align: -webkit-right; font-weight: bold; font-size: large">
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource3">
                            <Fields>
                                <asp:BoundField DataField="Total Price" HeaderText="Grand Total" ReadOnly="True" SortExpression="Total Price" />
                            </Fields>
                        </asp:DetailsView>

                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" SelectCommand="SELECT CONCAT('£',SUM(flower_price)) AS 'Total Price' FROM Flowers INNER JOIN FlowersCarts ON Flowers.flower_id = FlowersCarts.flower_id INNER JOIN Carts ON Carts.cart_id = FlowersCarts.cart_id INNER JOIN Users ON Users.user_id = Carts.user_id WHERE Users.user_id = @user_id">
                            <SelectParameters>
                                <asp:SessionParameter Name="user_id" SessionField="UserID" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <div class="check_out_simble review_button">
                        <button type="submit" title="Submit Review" class="button">Checkout</button>
                        <h2><a href="">Checkout with Multiple Addresses</a></h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--End Estimate Shipping,Discount,Total checkout area -->
</asp:Content>
