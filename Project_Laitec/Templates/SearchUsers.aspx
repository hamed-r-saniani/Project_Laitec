<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/MyMaster.Master" AutoEventWireup="true" CodeBehind="SearchUsers.aspx.cs" Inherits="Project_Laitec.Templates.SearchUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="MyStyleSheets.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div dir="rtl" style="text-align: center; width: 100%">
        <asp:Label ID="Label1" runat="server" Font-Names="ZahraRoosta" Font-Size="Medium" Text="نام خانوادگی مورد نظر:"></asp:Label>
        <asp:TextBox ID="txtSearchUsers" runat="server" MaxLength="25" TextMode="Search"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSearchUsers" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
    </div>
    <div style="text-align: center; margin-top:10px;" class="auto-style1" dir="rtl">
        <asp:Button ID="Button1" runat="server" Font-Names="Kamva" Font-Size="X-Large" Height="52px" Text="جستجو" ValidationGroup="1" Width="105px" OnClick="Button1_Click" />
    </div>
    <div dir="rtl" style="width: 100%; text-align: center;margin-top:10px;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="50%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:HyperLinkField DataNavigateUrlFields="UserId" DataNavigateUrlFormatString="EditUser.aspx?UserId={0}" HeaderText="ویرایش کاربر" Target="_blank" Text="ویرایش" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Asp.net_Laitec_TamrinConnectionString4 %>" SelectCommand="SearchUsers" SelectCommandType="StoredProcedure" OnSelecting="SqlDataSource1_Selecting">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtSearchUsers" Name="LastName" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
