<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Quotations.aspx.cs" Inherits="FlowerShopFinal_v._02.Customer.Quotations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%-- Front end for the quotations page --%>
      <h3>Your quotations</h3><br />
    <label id="test1" for="company">
    <span>Choose Quote</span>
    <asp:DropDownList ID="ddlQuotationID" runat="server" DataSourceID="SqlDataSource1" DataTextField="quotation_subject" DataValueField="QUOTATION_ID" Height="49px" Width="219px"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:ConnectionStringFlowers.ProviderName %>" SelectCommand="SELECT quotation_id, quotation_subject FROM [Quotations] WHERE [Quotations].user_id = @Param1">
        <SelectParameters>
                            <asp:SessionParameter Name="Param1" SessionField="UserID" />
                        </SelectParameters>
    </asp:SqlDataSource>
  </label>
    <label id="test2" for="company">
    <span>Choose Action</span>
        <asp:DropDownList ID="ddlStatus" runat="server" Height="37px" Width="119px">
            <asp:ListItem>Accept</asp:ListItem>
            <asp:ListItem>Reject</asp:ListItem>
    </asp:DropDownList>
  </label>
        <label id="test3" for="company">
            <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
  </label>

    <asp:ListView ID="ListView1" runat="server" DataSourceID="CustomerQuotations" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF;color: #284775;">
                <td>
                    <asp:Label ID="quotation_subjectLabel" runat="server" Text='<%# Eval("quotation_subject") %>' />
                </td>
                <td>
                    <asp:Label ID="quotation_creatin_dateLabel" runat="server" Text='<%# Eval("quotation_creation_date") %>' />
                </td>
                <td>
                    <asp:Label ID="quotation_valid_untilLabel" runat="server" Text='<%# Eval("quotation_valid_until_date") %>' />
                </td>
                <td>
                    <asp:Label ID="quotation_statusLabel" runat="server" Text='<%# Eval("quotation_status") %>' />
                </td>
                <td>
                    <asp:Label ID="quotation_totalLabel" runat="server" Text='<%# Eval("quotation_total") %>' />
                </td>                
                <td>
                    <asp:Button ID="Button1" runat="server" Text="View" OnClick="Button1_Click" CommandArgument='<%# Eval("quotation_id") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #999999;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="quotation_subjectTextBox" runat="server" Text='<%# Bind("quotation_subject") %>' />
                </td>
                <td>
                    <asp:TextBox ID="quotation_creatin_dateTextBox" runat="server" Text='<%# Bind("quotation_creation_date") %>' />
                </td>
                <td>
                    <asp:TextBox ID="quotation_valid_untilTextBox" runat="server" Text='<%# Bind("quotation_valid_until_date") %>' />
                </td>
                <td>
                    <asp:TextBox ID="quotation_statusTextBox" runat="server" Text='<%# Bind("quotation_status") %>' />
                </td>
                <td>
                    <asp:TextBox ID="quotation_totalTextBox" runat="server" Text='<%# Bind("quotation_total") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
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
                    <asp:TextBox ID="quotation_subjectTextBox" runat="server" Text='<%# Bind("quotation_subject") %>' />
                </td>
                <td>
                    <asp:TextBox ID="quotation_creatin_dateTextBox" runat="server" Text='<%# Bind("quotation_creation_date") %>' />
                </td>
                <td>
                    <asp:TextBox ID="quotation_valid_untilTextBox" runat="server" Text='<%# Bind("quotation_valid_until_date") %>' />
                </td>
                <td>
                    <asp:TextBox ID="quotation_statusTextBox" runat="server" Text='<%# Bind("quotation_status") %>' />
                </td>
                <td>
                    <asp:TextBox ID="quotation_totalTextBox" runat="server" Text='<%# Bind("quotation_total") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #E0FFFF;color: #333333;">
                <td>
                    <asp:Label ID="quotation_subjectLabel" runat="server" Text='<%# Eval("quotation_subject") %>' />
                </td>
                <td>
                    <asp:Label ID="quotation_creatin_dateLabel" runat="server" Text='<%# Eval("quotation_creation_date") %>' />
                </td>
                <td>
                    <asp:Label ID="quotation_valid_untilLabel" runat="server" Text='<%# Eval("quotation_valid_until_date") %>' />
                </td>
                <td>
                    <asp:Label ID="quotation_statusLabel" runat="server" Text='<%# Eval("quotation_status") %>' />
                </td>
                <td>
                    <asp:Label ID="quotation_totalLabel" runat="server" Text='<%# Eval("quotation_total") %>' />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="View" OnClick="Button1_Click" CommandArgument='<%# Eval("quotation_id") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                <th runat="server">quotation_subject</th>
                                <th runat="server">quotation_creatin_date</th>
                                <th runat="server">quotation_valid_until</th>
                                <th runat="server">quotation_status</th>
                                <th runat="server">quotation_total</th>
                                <th runat="server">Action</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF"></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                <td>
                    <asp:Label ID="quotation_subjectLabel" runat="server" Text='<%# Eval("quotation_subject") %>' />
                </td>
                <td>
                    <asp:Label ID="quotation_creatin_dateLabel" runat="server" Text='<%# Eval("quotation_creation_date") %>' />
                </td>
                <td>
                    <asp:Label ID="quotation_valid_untilLabel" runat="server" Text='<%# Eval("quotation_valid_until_date") %>' />
                </td>
                <td>
                    <asp:Label ID="quotation_statusLabel" runat="server" Text='<%# Eval("quotation_status") %>' />
                </td>
                <td>
                    <asp:Label ID="quotation_totalLabel" runat="server" Text='<%# Eval("quotation_total") %>' />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="View" />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="CustomerQuotations" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" ProviderName="<%$ ConnectionStrings:ConnectionStringFlowers.ProviderName %>" SelectCommand="SELECT quotation_id, quotation_subject, quotation_creation_date, quotation_valid_until_date, quotation_status, quotation_total  FROM [Quotations] WHERE [Quotations].user_id = @Param1">
                                <SelectParameters>
                            <asp:SessionParameter Name="Param1" SessionField="UserID" />
                        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="ListView2" runat="server"></asp:ListView>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>
