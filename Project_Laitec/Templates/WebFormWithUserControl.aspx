<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/MyMaster.Master" AutoEventWireup="true" CodeBehind="WebFormWithUserControl.aspx.cs" Inherits="Project_Laitec.Templates.WebFormWithUserControl" %>

<%@ Register Src="~/UserControl/Login.ascx" TagName="Login" TagPrefix="MyLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div dir="rtl" style="text-align: center;min-height:700px;">
        &nbsp;<MyLogin:Login ID="LoginControl" runat="server" />
    </div>
</asp:Content>
