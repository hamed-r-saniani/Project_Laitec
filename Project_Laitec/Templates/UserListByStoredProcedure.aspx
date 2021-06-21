<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/MyMaster.Master" AutoEventWireup="true" CodeBehind="UserListByStoredProcedure.aspx.cs" Inherits="Project_Laitec.Templates.UserListByStoredProcedure" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 687px;
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1" dir="rtl" style="text-align: center;">
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1" Height="350px" Width="100%" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="نام" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="نام خانوادگی" SortExpression="LastName" />
                <asp:BoundField DataField="Username" HeaderText="نام کاربری" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="پسوورد" SortExpression="Password" />
                <asp:ImageField DataAlternateTextField="Image" DataImageUrlField="Image">
                    <ControlStyle Height="100px" Width="100px" />
                    <ItemStyle Width="100px" />
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Asp.net_Laitec_TamrinConnectionString2 %>" SelectCommand="UserList" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</div>
</asp:Content>
