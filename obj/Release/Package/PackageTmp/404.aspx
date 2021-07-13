<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="FlowerShopFinal_v._02.ErrorPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--Start 404 area -->
		<div class="404-hastech-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="hastech-404-area-list">
							<div class="hastech-404-content">
								<h2>
									4
									<i class="fa fa-life-ring"></i>
									4!
								</h2>
							</div>
							<div class="error-heading">
								<h2>This page is not available</h2>
								<h3>We're sorry, but the Web address you've entered is no longer available. </h3>
							</div>
							<div class="error-form"><hr />
								<p>To find a product, please type its name in the field below.</p><hr />
								<form action="#" method="post" id="errorForm" class="error-ser-form">
									<div class="error-form-group form-group">
										<div class="search_box" style="float:unset">
                            <asp:TextBox ID="txtSearch" class="input_text" runat="server">Search</asp:TextBox>
                            <asp:ImageButton ID="btnSearch" runat="server" OnClick="btnSearch_Click" CssClass="fa fa-search" AlternateText=" " ImageUrl="~/Content/img/search.jpg" style="width:25px; vertical-align: bottom;"/>
                        </div>
									</div>													
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--End 404 area -->
</asp:Content>
