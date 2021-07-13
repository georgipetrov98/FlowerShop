<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageProducts.aspx.cs" Inherits="FlowerShopFinal_v._02.ManageProducts " %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%-- Front end for Managing products--%>
       <h3>Add/Update/Delete Products</h3><hr />
        <asp:SqlDataSource ID="ViewProducts" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" ProviderName="<%$ ConnectionStrings:ConnectionStringFlowers.ProviderName %>" SelectCommand="SELECT [Flowers].flower_id, flower_name, flower_description,flower_colour,flower_availability, category_id, flower_price, flower_quantity, supplier_id, flower_image_url FROM [Flowers], [FlowersInquiries] WHERE [Flowers].flower_id = [FlowersInquiries].flower_id" DeleteCommand="DELETE FROM [Flowers] WHERE flower_id = @flower_Id" InsertCommand="INSERT INTO [Flowers] ( flower_name,flower_description,flower_colour,flower_availability,category_id, flower_price, flower_quantity,supplier_id,flower_image_url) VALUES ( @flower_name, @flower_description,@flower_colour,@flower_availability, @category_id, @flower_price, @flower_quantity, @supplier_id, @flower_image_url)" UpdateCommand="UPDATE [Flowers] SET flower_name = @flower_name, flower_description = @flower_description,flower_colour = @flower_colour, flower_availability=@ category_id = @category_id, flower_price = @flower_price, flower_quantity = @flower_quantity, supplier_id = @supplier_id, flower_image_url = @flower_image_url WHERE (flower_id = @flower_id)">
            <DeleteParameters>
                <asp:Parameter Name="flower_id" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="flower_id" Type="Decimal" />
                <asp:Parameter Name="flower_name" Type="String" />
                <asp:Parameter Name="flower_description" Type="String" />
                <asp:Parameter Name="category_id" Type="Decimal" />
                <asp:Parameter Name="flower_price" Type="String" />
                <asp:Parameter Name="PRODUCT_inquiry_quantity" Type="Decimal" />
                <asp:Parameter Name="SUPPLIER_ID" Type="Decimal" />
                <asp:Parameter Name="flower_image_url" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="flower_name" Type="String" />
                <asp:Parameter Name="flower_description" Type="String" />
                <asp:Parameter Name="category_id" Type="Decimal" />
                <asp:Parameter Name="flower_price" Type="String" />
                <asp:Parameter Name="PRODUCT_inquiry_quantity" Type="Decimal" />
                <asp:Parameter Name="SUPPLIER_ID" Type="Decimal" />
                <asp:Parameter Name="flower_image_url" Type="String" />
                <asp:Parameter Name="flower_id" Type="Decimal" />
            </UpdateParameters>
    </asp:SqlDataSource>

       <br />
       <asp:FormView ID="FormView3" runat="server" AllowPaging="True" DataKeyNames="flower_id" DataSourceID="SqlDataSource1">
           <EditItemTemplate>
               Flower Id:
               <asp:Label ID="flower_idLabel1" runat="server" Text='<%# Eval("flower_id") %>' />
               <br />
               Flower name:
               <asp:TextBox ID="flower_nameTextBox" runat="server" Text='<%# Bind("flower_name") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="flower_nameTextBox" ErrorMessage="Product name is empty" ForeColor="#993333"></asp:RequiredFieldValidator>
               <br />
               Flower description:
               <asp:TextBox ID="flower_descriptionTextBox" runat="server" Text='<%# Bind("flower_description") %>' />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="flower_descriptionTextBox" ErrorMessage="Description name is empty" ForeColor="#993333"></asp:RequiredFieldValidator>
               <br />
               Flower quantity:
                 <asp:TextBox ID="flower_quantityTextBox" runat="server" Text='<%# Bind("flower_quantity") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="flower_quantityTextBox" ErrorMessage="Quantity is empty" ForeColor="#993333"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="flower_quantityTextBox" ErrorMessage="Please insert a number." ForeColor="#993333" ValidationExpression="[0-9]*$"></asp:RegularExpressionValidator>
               <br />
               Flower price:
               <asp:TextBox ID="flower_priceTextBox" runat="server" Text='<%# Bind("flower_price") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="flower_priceTextBox" ErrorMessage="Price is empty" ForeColor="#993333"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="flower_priceTextBox" ErrorMessage="Please insert a number." ForeColor="#993333" ValidationExpression="[0-9]*$"></asp:RegularExpressionValidator>
               <br />
               Flower image url:
                 <asp:TextBox ID="flower_image_urlTextBox" runat="server" Text='<%# Bind("flower_image_url") %>' Enabled="False" /><br /><asp:FileUpload ID="FileUpload1" runat="server" ValidateRequestMode="Enabled" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="flower_image_urlTextBox" ErrorMessage="Image is empty" ForeColor="#993333"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" CausesValidation="False" />
               <br />
               Flower colour:
               <asp:TextBox ID="flower_colourTextBox" runat="server" Text='<%# Bind("flower_colour") %>' />
               <br />
               Category id:
              <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Categories" DataTextField="category_name" DataValueField="category_id" SelectedValue='<%# Bind("category_id") %>'></asp:DropDownList>
                <asp:SqlDataSource ID="Category" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" ProviderName="<%$ ConnectionStrings:ConnectionStringFlowers.ProviderName %>" SelectCommand="SELECT category_name, category_name FROM [Categories]"></asp:SqlDataSource>
               <br />
               Supplier id:
              <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Suppliers" DataTextField="supplier_name" DataValueField="supplier_id" SelectedValue='<%# Bind("supplier_id") %>'></asp:DropDownList>
                <asp:SqlDataSource ID="Suppliers" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" ProviderName="<%$ ConnectionStrings:ConnectionStringFlowers.ProviderName %>" SelectCommand="SELECT supplier_id, supplier_name FROM [Suppliers]"></asp:SqlDataSource>
               <br />
               <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
           </EditItemTemplate>
           <InsertItemTemplate>
               Flower name:
               <asp:TextBox ID="flower_nameTextBox" runat="server" Text='<%# Bind("flower_name") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="flower_nameTextBox" ErrorMessage="Product name is empty" ForeColor="#993333"></asp:RequiredFieldValidator>
               <br />
               Flower description:
               <asp:TextBox ID="flower_descriptionTextBox" runat="server" Text='<%# Bind("flower_description") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="flower_descriptionTextBox" ErrorMessage="Description is empty" ForeColor="#993333"></asp:RequiredFieldValidator>
               <br />
               Flower quantity:
               <asp:TextBox ID="flower_quantityTextBox" runat="server" Text='<%# Bind("flower_quantity") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="flower_quantityTextBox" ErrorMessage="Quantity is empty" ForeColor="#993333"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="flower_quantityTextBox" ErrorMessage="Please insert a number." ForeColor="#993333" ValidationExpression="[0-9]*$"></asp:RegularExpressionValidator>
               <br />
               Flower price:
               <asp:TextBox ID="flower_priceTextBox" runat="server" Text='<%# Bind("flower_price") %>' />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="flower_priceTextBox" ErrorMessage="Please insert a number." ValidationExpression="[0-9]*$" ForeColor="#993333"></asp:RegularExpressionValidator>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="flower_priceTextBox" ErrorMessage="Flower price is empty" ForeColor="#993333"></asp:RequiredFieldValidator>
               <br />
               Flower image url:
                  <asp:TextBox ID="flower_image_urlTextBox" runat="server" Text='<%# Bind("flower_image_url") %>' Enabled="False" /> <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="flower_image_urlTextBox" ErrorMessage="Image is empty." ForeColor="#993333"></asp:RequiredFieldValidator>
                <br />

                <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" CausesValidation="False" /><br />

               <br />
               Flower colour:
               <asp:TextBox ID="flower_colourTextBox" runat="server" Text='<%# Bind("flower_colour") %>' />
               <br />
               Category id:
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="category_name" DataValueField="category_id" SelectedValue='<%# Bind("category_id") %>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" ProviderName="<%$ ConnectionStrings:ConnectionStringFlowers.ProviderName %>" SelectCommand="SELECT category_id, category_name FROM [Categories]"></asp:SqlDataSource>
               <br />
               Supplier id:
                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource2" DataTextField="supplier_name" DataValueField="supplier_id" SelectedValue='<%# Bind("supplier_id") %>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" ProviderName="<%$ ConnectionStrings:ConnectionStringFlowers.ProviderName %>" SelectCommand="SELECT supplier_id, supplier_name FROM [Suppliers]"></asp:SqlDataSource>
               <br />
               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
           </InsertItemTemplate>
           <ItemTemplate>
               Flower id:
               <asp:Label ID="flower_idLabel" runat="server" Text='<%# Eval("flower_id") %>' />
               <br />
               Flower name:
               <asp:Label ID="flower_nameLabel" runat="server" Text='<%# Bind("flower_name") %>' />
               <br />
               Flower description:
               <asp:Label ID="flower_descriptionLabel" runat="server" Text='<%# Bind("flower_description") %>' />
               <br />
               Flower quantity:
               <asp:Label ID="flower_quantityLabel" runat="server" Text='<%# Bind("flower_quantity") %>' />
               <br />
               Flower price:
               <asp:Label ID="flower_priceLabel" runat="server" Text='<%# Bind("flower_price") %>' />
               <br />
               Flower image url:
               <asp:image ID="flower_image_urlLabel" runat="server" imageurl='<%# Bind("flower_image_url") %>' style="max-width: 250px"/>
               <br />
               Flower colour:
               <asp:Label ID="flower_colourLabel" runat="server" Text='<%# Bind("flower_colour") %>' />
               <br />
               Category id:
               <asp:Label ID="category_idLabel" runat="server" Text='<%# Bind("category_id") %>' />
               <br />
               Supplier id:
               <asp:Label ID="supplier_idLabel" runat="server" Text='<%# Bind("supplier_id") %>' />
               <br />
               <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
               &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
               &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
           </ItemTemplate>
       </asp:FormView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" DeleteCommand="DELETE FROM [Flowers] WHERE [flower_id] = @flower_id" InsertCommand="INSERT INTO [Flowers] ([flower_name], [flower_description], [flower_quantity], [flower_price], [flower_image_url],  [flower_colour], [category_id], [supplier_id]) VALUES (@flower_name, @flower_description, @flower_quantity, @flower_price, @flower_image_url, @flower_colour, @category_id, @supplier_id)" SelectCommand="SELECT [flower_id], [flower_name], [flower_description], [flower_quantity], [flower_price], [flower_image_url], [flower_colour], [category_id], [supplier_id] FROM [Flowers]" UpdateCommand="UPDATE [Flowers] SET [flower_name] = @flower_name, [flower_description] = @flower_description, [flower_quantity] = @flower_quantity, [flower_price] = @flower_price, [flower_image_url] = @flower_image_url,  [flower_colour] = @flower_colour, [category_id] = @category_id, [supplier_id] = @supplier_id WHERE [flower_id] = @flower_id">
           <DeleteParameters>
               <asp:Parameter Name="flower_id" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="flower_name" Type="String" />
               <asp:Parameter Name="flower_description" Type="String" />
               <asp:Parameter Name="flower_quantity" Type="Int32" />
               <asp:Parameter Name="flower_price" Type="Int32" />
               <asp:Parameter Name="flower_image_url" Type="String" />
               <asp:Parameter Name="flower_availability" Type="String" />
               <asp:Parameter Name="flower_colour" Type="String" />
               <asp:Parameter Name="category_id" Type="Int32" />
               <asp:Parameter Name="supplier_id" Type="Int32" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="flower_name" Type="String" />
               <asp:Parameter Name="flower_description" Type="String" />
               <asp:Parameter Name="flower_quantity" Type="Int32" />
               <asp:Parameter Name="flower_price" Type="Int32" />
               <asp:Parameter Name="flower_image_url" Type="String" />
               <asp:Parameter Name="flower_availability" Type="String" />
               <asp:Parameter Name="flower_colour" Type="String" />
               <asp:Parameter Name="category_id" Type="Int32" />
               <asp:Parameter Name="supplier_id" Type="Int32" />
               <asp:Parameter Name="flower_id" Type="Int32" />
           </UpdateParameters>
       </asp:SqlDataSource>

    <h3>Add/Update/Delete Product Types</h3>
    <asp:FormView ID="FormView2" runat="server" AllowPaging="True" DataKeyNames="category_id" DataSourceID="Categories">
        <EditItemTemplate>
            Product type description:
            <asp:TextBox ID="PRODUCT_TYPE_DESCRIPTIONTextBox" runat="server" Text='<%# Bind("category_name") %>' />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PRODUCT_TYPE_DESCRIPTIONTextBox" ErrorMessage="Product type description is empty" ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Product type description:
            <asp:TextBox ID="PRODUCT_TYPE_DESCRIPTIONTextBox" runat="server" Text='<%# Bind("category_name") %>' />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PRODUCT_TYPE_DESCRIPTIONTextBox" ErrorMessage="Product type description is empty" ForeColor="#993333"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Category id:
            <asp:Label ID="category_idLabel" runat="server" Text='<%# Eval("category_id") %>' />
            <br />
            Product type description:
            <asp:Label ID="PRODUCT_TYPE_DESCRIPTIONLabel" runat="server" Text='<%# Bind("category_name") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    
    <asp:SqlDataSource ID="Categories" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" DeleteCommand="DELETE From [Categories] WHERE (category_id = @category_id)" InsertCommand="INSERT INTO [Categories] (category_name) VALUES (@category_name )" ProviderName="<%$ ConnectionStrings:ConnectionStringFlowers.ProviderName %>" SelectCommand="SELECT category_id, category_name FROM [Categories]" UpdateCommand="UPDATE [Categories] SET category_name = @category_name WHERE (category_id = @category_id)">
        <DeleteParameters>
            <asp:Parameter Name="category_id" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PRODUCT_TYPE_DESCRIPTION" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PRODUCT_TYPE_DESCRIPTION" Type="String" />
            <asp:Parameter Name="category_id" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
