<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/MyMaster.Master" AutoEventWireup="true" CodeBehind="MyFormUsingMasterPage.aspx.cs" Inherits="Project_Laitec.Templates.MyFormUsingMasterPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table dir="rtl" style="text-align: center; width: 100%">
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="NewId" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="50%">
                    <AlternatingItemStyle BackColor="#F7F7F7" />
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <ItemTemplate>
                        <table dir="rtl" style="text-align: right; width: 100%">
                    <tr>
                        <td>
                            <asp:Label ID="NewsTitleLabel" runat="server" Text='<%# Eval("NewsTitle") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="SmallTextLabel" runat="server" Text='<%# Eval("SmallText") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="ZahraRoosta" Font-Size="Small" ForeColor="Blue" PostBackUrl='<%# Eval("NewId","NewsDetail.aspx?NewId={0}") %>' Text='ادامه خبر'></asp:LinkButton>
                        </td>
                    </tr>
                </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Asp.net_Laitec_TamrinConnectionString3 %>" SelectCommand="SELECT [NewId], [NewsTitle], [SmallText] FROM [tbl_News]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
