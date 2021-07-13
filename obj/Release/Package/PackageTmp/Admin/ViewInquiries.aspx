<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewInquiries.aspx.cs" Inherits="FlowerShopFinal_v._02.ViewInquiries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%-- Front end for managing inqurieies --%>
    <h3>Current inquiries</h3><hr />
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="inquiry_id" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <span style="">inquiry_id:
            <asp:Label ID="inquiry_idLabel" runat="server" Text='<%# Eval("inquiry_id") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            <br />
            Subject:
            <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
            <br />
            Message:
            <asp:Label ID="MessageLabel" runat="server" Text='<%# Eval("Message") %>' />
            <br />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
<br /><br /></span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="">inquiry_id:
            <asp:Label ID="inquiry_idLabel1" runat="server" Text='<%# Eval("inquiry_id") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Subject:
            <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
            <br />
            Message:
            <asp:TextBox ID="MessageTextBox" runat="server" Text='<%# Bind("Message") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            <br /><br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />Subject:
            <asp:TextBox ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
            <br />Message:
            <asp:TextBox ID="MessageTextBox" runat="server" Text='<%# Bind("Message") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="">inquiry_id:
            <asp:Label ID="inquiry_idLabel" runat="server" Text='<%# Eval("inquiry_id") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            <br />
            Subject:
            <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
            <br />
            Message:
            <asp:Label ID="MessageLabel" runat="server" Text='<%# Eval("Message") %>' />
            <br />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
<br /><br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="">inquiry_id:
            <asp:Label ID="inquiry_idLabel" runat="server" Text='<%# Eval("inquiry_id") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            <br />
            Subject:
            <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
            <br />
            Message:
            <asp:Label ID="MessageLabel" runat="server" Text='<%# Eval("Message") %>' />
            <br />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
<br /><br /></span>
        </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringFlowers %>" DeleteCommand="DELETE FROM [Inquiries] WHERE [inquiry_id] = @inquiry_id" InsertCommand="INSERT INTO [Inquiries] ([user_name], [user_email], [inquiry_subject], [inquiry_message]) VALUES (@user_name, @user_email, @inquiry_subject, @inquiry_message)" SelectCommand="SELECT [inquiry_id], [user_name] AS 'Name', [user_email] AS 'Email', [inquiry_subject] AS 'Subject', [inquiry_message] AS 'Message' FROM [Inquiries]" UpdateCommand="UPDATE [Inquiries] SET [user_name] = @user_name, [user_email] = @user_email, [inquiry_subject] = @inquiry_subject, [inquiry_message] = @inquiry_message WHERE [inquiry_id] = @inquiry_id">
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
</asp:Content>
