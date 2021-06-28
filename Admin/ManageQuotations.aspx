<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageQuotations.aspx.cs" Inherits="FlowerShopFinal_v._02.Admin.ManageQuotations" %>
    <asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <%-- Front end for managing quotations --%>
        <h3>Manage Quotations</h3><hr />
     <asp:FormView ID="FormView2" runat="server" AllowPaging="True" DataKeyNames="quotation_id" DataSourceID="SqlDataSource2">
        <EditItemTemplate>
            Quotation subject:
            <asp:TextBox ID="quotation_subjectTextBox" runat="server" Text='<%# Bind("quotation_subject") %>' />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="quotation_subjectTextBox" ErrorMessage="Quotation subject is empty." ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            Quotation creation date:
            <asp:TextBox ID="quotation_creation_dateTextBox" runat="server" Text='<%# Bind("quotation_creation_date") %>' />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="quotation_creation_dateTextBox" ErrorMessage="Quotation creation date is empty." ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="quotation_creation_dateTextBox" ErrorMessage="Insert only dates." ForeColor="#993333" ValidationExpression="^(([0-2]\d|[3][0-1])\/([0]\d|[1][0-2])\/[2][0]\d{2})$|^(([0-2]\d|[3][0-1])\/([0]\d|[1][0-2])\/[2][0]\d{2}\s([0-1]\d|[2][0-3])\:[0-5]\d\:[0-5]\d)$"></asp:RegularExpressionValidator>
            <br />
            Quotation valid until date:
            <asp:TextBox ID="quotation_valid_until_dateTextBox" runat="server" Text='<%# Bind("quotation_valid_until_date") %>' />
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="quotation_valid_until_dateTextBox" ErrorMessage="Insert only dates." ForeColor="#993333" ValidationExpression="^(([0-2]\d|[3][0-1])\/([0]\d|[1][0-2])\/[2][0]\d{2})$|^(([0-2]\d|[3][0-1])\/([0]\d|[1][0-2])\/[2][0]\d{2}\s([0-1]\d|[2][0-3])\:[0-5]\d\:[0-5]\d)$"></asp:RegularExpressionValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="quotation_valid_until_dateTextBox" ErrorMessage="Quotation valid until date is empty." ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            User id:
             <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource1" DataTextField="user_email" DataValueField="user_id" SelectedValue='<%# Bind("user_id") %>'>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" SelectCommand="SELECT [user_id], [user_email] FROM [Users]"></asp:SqlDataSource>
            Quotation status:
            <asp:TextBox ID="quotation_totalTextBox0" runat="server" Text='Pending' Enabled="False"/>
            
            <br />
            Quotation total:
            <asp:TextBox ID="quotation_totalTextBox" runat="server" Text='<%# Bind("quotation_total") %>' />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="quotation_totalTextBox" ErrorMessage="Quotation total is empty." ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="quotation_totalTextBox" ErrorMessage="Insert only numbers." ForeColor="#993333" ValidationExpression="[0-9]*$"></asp:RegularExpressionValidator>
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Quotation subject:
            <asp:TextBox ID="quotation_subjectTextBox" runat="server" Text='<%# Bind("quotation_subject") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="quotation_subjectTextBox" ErrorMessage="Quotation subject is empty." ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            Quotation creation date:
            <asp:TextBox ID="quotation_creation_dateTextBox" runat="server" Text='<%# Bind("quotation_creation_date") %>' />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="quotation_creation_dateTextBox" ErrorMessage="Quotation creation date  is empty." ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="quotation_creation_dateTextBox" ErrorMessage="Insert only dates." ForeColor="#993333" ValidationExpression="^(([0-2]\d|[3][0-1])\/([0]\d|[1][0-2])\/[2][0]\d{2})$|^(([0-2]\d|[3][0-1])\/([0]\d|[1][0-2])\/[2][0]\d{2}\s([0-1]\d|[2][0-3])\:[0-5]\d\:[0-5]\d)$"></asp:RegularExpressionValidator>
            <br />
            Quotation valid until date:
            <asp:TextBox ID="quotation_valid_until_dateTextBox" runat="server" Text='<%# Bind("quotation_valid_until_date") %>' />
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="quotation_valid_until_dateTextBox" ErrorMessage="Insert only dates." ForeColor="#993333" ValidationExpression="^(([0-2]\d|[3][0-1])\/([0]\d|[1][0-2])\/[2][0]\d{2})$|^(([0-2]\d|[3][0-1])\/([0]\d|[1][0-2])\/[2][0]\d{2}\s([0-1]\d|[2][0-3])\:[0-5]\d\:[0-5]\d)$"></asp:RegularExpressionValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="quotation_valid_until_dateTextBox" ErrorMessage="Quotation valid until date  is empty." ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            User id:
            <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource1" DataTextField="user_email" DataValueField="user_id" SelectedValue='<%# Bind("user_id") %>'>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" SelectCommand="SELECT [user_id], [user_email] FROM [Users]"></asp:SqlDataSource>
            <br />
            Quotation status:
            <asp:TextBox ID="quotation_totalTextBox0" runat="server" Text='Pending' Enabled="False"/>
            <br />
            
            Quotation total:
            <asp:TextBox ID="quotation_totalTextBox" runat="server" Text='<%# Bind("quotation_total") %>' />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="quotation_totalTextBox" ErrorMessage="Quotation total is empty." ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="quotation_totalTextBox" ErrorMessage="Insert only numbers." ForeColor="#993333" ValidationExpression="[0-9]*$"></asp:RegularExpressionValidator>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Quotation id:
            <asp:Label ID="Label1" runat="server" Text='<%# Bind("quotation_id") %>' />
            <br />
            Quotation subject:
            <asp:Label ID="quotation_subjectLabel" runat="server" Text='<%# Bind("quotation_subject") %>' />
            <br />
            Quotation creation date:
            <asp:Label ID="quotation_quotation_creation_dateLabel" runat="server" Text='<%# Bind("quotation_creation_date") %>' />
            <br />
            Quotation valid until date:
            <asp:Label ID="quotation_quotation_valid_until_dateLabel" runat="server" Text='<%# Bind("quotation_valid_until_date") %>' />
            <br />
            User id:
            <asp:Label ID="user_idLabel" runat="server" Text='<%# Bind("user_id") %>' />
            <br />
            Quotation status:
            <asp:Label ID="quotation_statusLabel" runat="server" Text='<%# Bind("quotation_status") %>' />
            <br />
            Quotation total:
            <asp:Label ID="quotation_totalLabel" runat="server" Text='<%# Bind("quotation_total") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" DeleteCommand="DELETE FROM [QUOTATIONS] WHERE (quotation_id = @quotation_id)" InsertCommand="INSERT INTO [Quotations](quotation_subject, quotation_creation_date, quotation_valid_until_date, user_id, quotation_status, quotation_total) VALUES (@quotation_subject, @quotation_creation_date, @quotation_valid_until_date, @user_id, 'Pending', @quotation_total)" ProviderName="<%$ ConnectionStrings:ConnectionStringFlowers.ProviderName %>" SelectCommand="SELECT * FROM [Quotations]" UpdateCommand="UPDATE [Quotations] SET quotation_subject = @quotation_subject, quotation_creation_date = @quotation_creation_date, quotation_valid_until_date = @quotation_valid_until_date, user_id = @user_id, quotation_status = 'Pending', quotation_total = @quotation_total WHERE (quotation_id = @quotation_id)">
        <DeleteParameters>
            <asp:Parameter Name="quotation_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="quotation_subject" Type="String" />
            <asp:Parameter Name="quotation_creation_date" Type="DateTime" />
            <asp:Parameter Name="quotation_valid_until_date" Type="DateTime" />
            <asp:Parameter Name="user_id" Type="String" />
            <asp:Parameter Name="quotation_total" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="quotation_subject" Type="String" />
            <asp:Parameter Name="quotation_creation_date" Type="DateTime" />
            <asp:Parameter Name="quotation_valid_until_date" Type="DateTime" />
            <asp:Parameter Name="user_id" Type="String" />
            <asp:Parameter Name="quotation_total" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>


        <br />
        <br />
        <br />


    <asp:FormView ID="FormView1" runat="server" DataKeyNames="flower_quotation_id" DataSourceID="SqlDataSource3">
        <InsertItemTemplate>
            Quotation id:
            <asp:TextBox ID="quotation_idTextBox" runat="server" Text='<%# Bind("quotation_id") %>' />
            <br />
            Flower id:
            <asp:TextBox ID="flower_idTextBox" runat="server" Text='<%# Bind("flower_id") %>' />
            <br />
            Inquiry quantity:
            <asp:TextBox ID="inquiry_quantityTextBox" runat="server" Text='<%# Bind("flower_quotation_quantity") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:LinkButton CssClass="button" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add New Product" />
        </ItemTemplate>
    </asp:FormView>


    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" InsertCommand="INSERT INTO [FlowersQuotations](quotation_id, flower_id, flower_quotation_quantity) VALUES (@quotation_id, @flower_id, @flower_quotation_quantity)" ProviderName="<%$ ConnectionStrings:ConnectionStringFlowers.ProviderName %>" SelectCommand="SELECT flower_quotation_id, quotation_id , flower_id, flower_quotation_quantity FROM [FlowersQuotations]">
        <InsertParameters>
            <asp:Parameter Name="quotation_id" Type="String" />
            <asp:Parameter Name="flower_id" Type="Decimal" />
            <asp:Parameter Name="inquiry_quantity" Type="Decimal" />
        </InsertParameters>
    </asp:SqlDataSource>


    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="flower_quotation_id">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="quotation_id" HeaderText="quotation_id" SortExpression="quotation_id" />
            <asp:TemplateField HeaderText="flower_id" SortExpression="flower_id">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="Flowers" DataTextField="flower_name" DataValueField="flower_id" >
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Flowers" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" ProviderName="<%$ ConnectionStrings:ConnectionStringFlowers.ProviderName %>" SelectCommand="SELECT flower_id, flower_name FROM [Flowers]"></asp:SqlDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblProductName" runat="server" Text="Label"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="flower_quotation_quantity" HeaderText="flower_quotaion_quantity" SortExpression="flower_quotation_quantity" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" DeleteCommand="DELETE FROM [FlowersQuotations] WHERE [flower_quotation_id] = @flower_quotation_id" InsertCommand="INSERT INTO [FlowersQuotations] ([quotation_id], [flower_id], [flower_quotation_quantity]) VALUES (@quotation_id, @flower_id, @flower_quotation_quantity)" SelectCommand="SELECT * FROM [FlowersQuotations]" UpdateCommand="UPDATE [FlowersQuotations] SET [quotation_id] = @quotation_id, [flower_id] = @flower_id, [flower_quotation_quantity] = @flower_quotation_quantity WHERE [flower_quotation_id] = @flower_quotation_id">
        <DeleteParameters>
            <asp:Parameter Name="PRODUCT_quotation_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="quotation_id" Type="Int32" />
            <asp:Parameter Name="flower_id" Type="Int32" />
            <asp:Parameter Name="flower_quotation_quantity" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="quotation_id" Type="String" />
            <asp:Parameter Name="flower_id" Type="Decimal" />
            <asp:Parameter Name="inquiry_quantity" Type="Decimal" />
            <asp:Parameter Name="flower_quotation_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
