<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/MyMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Project_Laitec.Templates.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            position: center;
            float: right;
            height: 71px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="min-height:680px;width:100%;text-align:center;" dir="rtl">

        <div style="min-width:33%;float:right;min-height:100px;">
            <br />
            <asp:Label ID="Label1" runat="server" Text="نام:" Font-Size="XX-Large"></asp:Label>
        </div>
        <div style="min-width:33%;float:right;min-height:100px;">
            <br />
            <asp:TextBox ID="txtName" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div style="min-width:33%;float:right;min-height:100px;"></div>
        <div style="min-width:1%;float:right;min-height:100px;"></div>
        
        <div style="min-width:33%;float:right;min-height:100px;">
            <br />
            <asp:Label ID="Label2" runat="server" Text="نام خانوادگی:" Font-Size="XX-Large"></asp:Label>
        </div>
        <div style="min-width:33%;float:right;min-height:100px;">
            <br />
            <asp:TextBox ID="txtLastName" runat="server" MaxLength="50"></asp:TextBox>
        </div>
        <div style="min-width:33%;float:right;min-height:100px;"></div>
        <div style="min-width:1%;float:right;min-height:100px;"></div>

        <div style="min-width:33%;float:right;min-height:100px;">
            <br />
            <asp:Label ID="Label3" runat="server" Text="نام کاربری:" Font-Size="XX-Large"></asp:Label>
        </div>
        <div style="min-width:33%;float:right;min-height:100px;">
            <br />
            <asp:TextBox ID="txtUserName" runat="server" MaxLength="25"></asp:TextBox>
        </div>
        <div style="min-width:33%;float:right;min-height:100px;"></div>
        <div style="min-width:1%;float:right;min-height:100px;"></div>

        <div style="min-width:33%;float:right;min-height:100px;">
            <br />
            <asp:Label ID="Label4" runat="server" Text="رمز عبور:" Font-Size="XX-Large"></asp:Label>
        </div>
        <div style="min-width:33%;float:right;min-height:100px;">
            <br />
            <asp:TextBox ID="txtPassword" runat="server" MaxLength="25" TextMode="Password"></asp:TextBox>
        </div>
        <div style="min-width:33%;float:right;min-height:100px;"></div>
        <div style="min-width:1%;float:right;min-height:100px;"></div>

        <div style="min-width:33%;float:right;min-height:180px;">
            <asp:Label ID="Label5" runat="server" Text="آپلود تصویر کاربری:" Font-Size="X-Large" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <asp:FileUpload ID="fliPicture" runat="server" />
        </div>
        <div style="min-width:33%;float:right;min-height:100px;">
            <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl="~/Templates/images/Client Photos/Default PHOTO.png" />
        </div>
        <div style="min-width:33%;float:right;min-height:100px;text-align:right;padding-top:7px;">
            <br />
            <asp:Button ID="Button1" runat="server" Text="نمایش تصویر" BackColor="#FFFF66" Height="48px" Width="117px" OnClick="Button1_Click" />
        </div>
        <div style="min-width:1%;float:right;min-height:100px;"></div>

        <div style="min-height:100px;text-align:center;" class="auto-style1">
            <asp:Button ID="btnRegister" runat="server" Text="Register" Height="51px" Width="140px" BackColor="#0066ff" OnClick="btnRegister_Click" />
            <br />
            <br />
            <asp:Label ID="lblResult" runat="server" Font-Size="X-Large" ForeColor="#33CC33" Font-Names="2  Ferdosi"></asp:Label>
        </div>
    </div>
</asp:Content>
