<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/MyMaster.Master" AutoEventWireup="true" CodeBehind="UsersList.aspx.cs" Inherits="Project_Laitec.Templates.UsersList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div dir="rtl" style="text-align:center;width:100%;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1" Width="100%" Height="400px" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="6">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="نام" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="نام خانوادگی" SortExpression="LastName" />
                <asp:BoundField DataField="Username" HeaderText="نام کاربری" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="پسوورد" SortExpression="Password" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" InsertVisible="False" ReadOnly="True" />
                <asp:CommandField CancelText="انصراف" DeleteText="حذف" EditText="ویرایش" HeaderText="پنل تغییرات" InsertText="افزودن" NewText="تازه" SelectText="انتخاب کردن" ShowDeleteButton="True" ShowEditButton="True" UpdateText="بروزرسانی" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Asp.net_Laitec_TamrinConnectionString %>" SelectCommand="SELECT [FirstName], [UserId], [LastName], [Username], [Password] FROM [tbl_User]" DeleteCommand="DELETE FROM [tbl_User] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [tbl_User] ([FirstName], [LastName], [Username], [Password]) VALUES (@FirstName, @LastName, @Username, @Password)" UpdateCommand="UPDATE [tbl_User] SET [FirstName] = @FirstName, [LastName] = @LastName, [Username] = @Username, [Password] = @Password WHERE [UserId] = @UserId">
            <DeleteParameters>
                <asp:Parameter Name="UserId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="UserId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
</div>
</asp:Content>
