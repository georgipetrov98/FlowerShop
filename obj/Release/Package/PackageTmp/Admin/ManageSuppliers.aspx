<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageSuppliers.aspx.cs" Inherits="FlowerShopFinal_v._02.ManageSuppliers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%-- Front end for managing suppliers --%>
     <h3>Manage Suppliers</h3><hr />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="SUPPLIER_ID" DataSourceID="Suppliers" AllowPaging="True">
        <EditItemTemplate>
            Supplier name:
            <asp:TextBox ID="SUPPLIER_NAMETextBox" runat="server" Text='<%# Bind("supplier_name") %>' />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="SUPPLIER_NAMETextBox" ErrorMessage="Supplier name is empty." ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            Supplier address:
            <asp:TextBox ID="SUPPLIER_ADDRESSTextBox" runat="server" Text='<%# Bind("supplier_address") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="SUPPLIER_ADDRESSTextBox" ErrorMessage="Supplier address is empty." ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            Supplier telephone number:
            <asp:TextBox ID="SUPPLIER_TELEPHONE_NUMBERTextBox" runat="server" Text='<%# Bind("supplier_phone_number") %>' />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="SUPPLIER_TELEPHONE_NUMBERTextBox" ErrorMessage="Supplier phone number is empty." ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="SUPPLIER_TELEPHONE_NUMBERTextBox" ErrorMessage="Insert a valid telephone number." ForeColor="#993333" ValidationExpression="\d{11}"></asp:RegularExpressionValidator>
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Supplier name:
            <asp:TextBox ID="SUPPLIER_NAMETextBox" runat="server" Text='<%# Bind("supplier_name") %>' />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="SUPPLIER_NAMETextBox" ErrorMessage="Supplier name is empty." ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            Supplier address:
            <asp:TextBox ID="SUPPLIER_ADDRESSTextBox" runat="server" Text='<%# Bind("supplier_address") %>' />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="SUPPLIER_ADDRESSTextBox" ErrorMessage="Supplier address is empty." ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            <br />
            Supplier telephone number:
            <asp:TextBox ID="SUPPLIER_TELEPHONE_NUMBERTextBox" runat="server" Text='<%# Bind("supplier_phone_number") %>' />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="SUPPLIER_TELEPHONE_NUMBERTextBox" ErrorMessage="Supplier phone number is empty." ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="SUPPLIER_TELEPHONE_NUMBERTextBox" ErrorMessage="Insert a valid telephone number." ForeColor="#993333" ValidationExpression="\d{11}"></asp:RegularExpressionValidator>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Supplier name:
            <asp:Label ID="SUPPLIER_NAMELabel" runat="server" Text='<%# Bind("supplier_name") %>' />
            <br />
            Supplier address:
            <asp:Label ID="SUPPLIER_ADDRESSLabel" runat="server" Text='<%# Bind("supplier_address") %>' />
            <br />
            Supplier telephone number:
            <asp:Label ID="SUPPLIER_TELEPHONE_NUMBERLabel" runat="server" Text='<%# Bind("supplier_phone_number") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
                <EmptyDataTemplate>
            There are no existing suppliers.
            <br />
            <br />
            <asp:LinkButton ID="NewButton" class="button" runat="server" CausesValidation="False" CommandName="New" Text="Add New Supplier" />
        </EmptyDataTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="Suppliers" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" DeleteCommand="DELETE FROM [SUPPLIERS] WHERE (supplier_id = @supplier_id)" InsertCommand="INSERT INTO [SUPPLIERS] (supplier_name, supplier_address, supplier_phone_number) VALUES (@supplier_name, @supplier_address, @supplier_phone_number)" ProviderName="<%$ ConnectionStrings:ConnectionStringFlowers.ProviderName %>" SelectCommand="SELECT supplier_id, supplier_name, supplier_address,supplier_phone_number FROM [SUPPLIERS]" UpdateCommand="UPDATE [SUPPLIERS] SET supplier_name = @supplier_name, supplier_address = @supplier_address, supplier_phone_number = @supplier_phone_number WHERE (supplier_id = @supplier_id)">
        <DeleteParameters>
            <asp:Parameter Name="SUPPLIER_ID" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SUPPLIER_NAME" Type="String" />
            <asp:Parameter Name="SUPPLIER_ADDRESS" Type="String" />
            <asp:Parameter Name="SUPPLIER_TELEPHONE_NUMBER" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SUPPLIER_NAME" Type="String" />
            <asp:Parameter Name="SUPPLIER_ADDRESS" Type="String" />
            <asp:Parameter Name="SUPPLIER_TELEPHONE_NUMBER" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
