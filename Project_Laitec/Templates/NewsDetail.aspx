<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/MyMaster.Master" AutoEventWireup="true" CodeBehind="NewsDetail.aspx.cs" Inherits="Project_Laitec.Templates.NewsDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div dir="rtl" style="font-family: Kamva; font-size: large; width: 100%">

        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="50%">
            <ItemTemplate>
                NewsText:
                <asp:Label ID="NewsTextLabel" runat="server" Text='<%# Eval("NewsText") %>' />
                <br />
                NewsDate:
                <asp:Label ID="NewsDateLabel" runat="server" Text='<%# Eval("NewsDate") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Asp.net_Laitec_TamrinConnectionString3 %>" SelectCommand="SELECT [NewsText], [NewsDate] FROM [tbl_News] WHERE ([NewId] = @NewId)">
            <SelectParameters>
                <asp:QueryStringParameter Name="NewId" QueryStringField="NewId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>
