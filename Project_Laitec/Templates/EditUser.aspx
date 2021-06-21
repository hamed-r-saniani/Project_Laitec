<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/MyMaster.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="Project_Laitec.Templates.EditUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table dir="rtl" style="width: 100%; background-color: #C0C0C0;">
        <tr>
            <td dir="rtl" style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Names="Kamva" Font-Size="Large" ForeColor="Blue" Text="نام کاربری:"></asp:Label>
            </td>
            <td dir="rtl">
                <asp:TextBox ID="txtUsername" runat="server" Font-Names="ZahraRoosta" Font-Size="Medium" ForeColor="#009933"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="دلت به حال عمه ات نمیسوزه؟" ControlToValidate="txtUsername" Font-Names="Kamva" Font-Size="Small" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td dir="rtl" style="text-align: center">
                <asp:Label ID="Label2" runat="server" Font-Names="Kamva" Font-Size="Large" ForeColor="Blue" Text="رمز عبور:"></asp:Label>
            </td>
            <td dir="rtl">
                <asp:TextBox ID="txtPassword" runat="server" Font-Names="ZahraRoosta" Font-Size="Medium" ForeColor="#009933"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="دلت به حال عمه ات نمیسوزه؟" ControlToValidate="txtPassword" Font-Names="Kamva" Font-Size="Small" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td dir="rtl" style="text-align: center">
                <asp:Label ID="Label3" runat="server" Font-Names="Kamva" Font-Size="Large" ForeColor="Blue" Text="نام:"></asp:Label>
            </td>
            <td dir="rtl">
                <asp:TextBox ID="txtName" runat="server" Font-Names="ZahraRoosta" Font-Size="Medium" ForeColor="#009933"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="دلت به حال عمه ات نمیسوزه؟" ControlToValidate="txtName" Font-Names="Kamva" Font-Size="Small" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td dir="rtl" style="text-align: center">
                <asp:Label ID="Label4" runat="server" Font-Names="Kamva" Font-Size="Large" ForeColor="Blue" Text="نام خانوادگی:"></asp:Label>
            </td>
            <td dir="rtl">
                <asp:TextBox ID="txtFamily" runat="server" Font-Names="ZahraRoosta" Font-Size="Medium" ForeColor="#009933"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="دلت به حال عمه ات نمیسوزه؟" ControlToValidate="txtFamily" Font-Names="Kamva" Font-Size="Small" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="text-align: center;" dir="rtl">
                <asp:Button ID="Button1" runat="server" BackColor="#66FF66" Font-Names="Kamva" Font-Size="Large" ForeColor="Red" Height="59px" OnClick="Button1_Click" Text="ویرایش" Width="114px" ValidationGroup="1" />
            </td>
        </tr>
        
    </table>
</asp:Content>
