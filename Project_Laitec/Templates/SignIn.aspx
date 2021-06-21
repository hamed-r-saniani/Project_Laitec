<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/MyMaster.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Project_Laitec.Templates.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="min-height:350px;background-image:url('images/EHDA/Wallpaper%20(15).jpg');" dir="rtl">
        <div style="float:right;width:50%;min-height:100px;text-align:center;">
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="نام کاربری:"></asp:Label>
        </div>
        <div style="float:right;width:50%;min-height:100px;">
            <br />
            <asp:TextBox ID="txtUserName" runat="server" MaxLength="50" ToolTip="Please Enter Your Username"></asp:TextBox>
        </div>
        <div style="float:right;width:50%;min-height:100px;text-align:center;">
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="رمز عبور:"></asp:Label>
        </div>
        <div style="float:right;width:50%;min-height:100px;">
            <br />
            <asp:TextBox ID="txtPassword" runat="server" MaxLength="50" ToolTip="Please Enter Your Password" TextMode="Password"></asp:TextBox>
        </div>
        <div style="float:right;text-align:center;width:100%;min-height:50px;margin-top:20px;">

            <asp:Label ID="lblResult" runat="server" Font-Bold="True" Font-Names="2  Baran Outline" Font-Size="Large" ForeColor="Red"></asp:Label>

        </div>
        <div style="float:right;text-align:center;width:100%;min-height:50px;margin-top:20px;">
            <br />
            <asp:Button ID="btnOk" runat="server" BorderColor="#33CC33" Font-Bold="True" Font-Names="2  Homa" Font-Size="Large" Text="تایید" Width="98px" OnClick="btnOk_Click" />
        </div>
    </div>
</asp:Content>