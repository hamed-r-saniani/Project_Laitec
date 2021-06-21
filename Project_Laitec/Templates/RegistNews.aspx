<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/MyMaster.Master" AutoEventWireup="true" CodeBehind="RegistNews.aspx.cs" Inherits="Project_Laitec.Templates.RegistNews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style2 {
            height: 62px
        }
        .auto-style3 {
            height: 51px
        }
        .auto-style4 {
            width: 100%;
            height: 375px;
        }
    </style>
    <script type="text/javascript" src="tinymce/jscripts/tiny_mce/tiny_mce.js"></script>
<script type="text/javascript">
    tinyMCE.init({
        mode: "textareas",
        theme: "advanced",
        plugins: "safari,spellchecker,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,imagemanager,filemanager",
        theme_advanced_buttons1: "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect",
        theme_advanced_buttons2: "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,undo,redo,|,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
        theme_advanced_buttons3: "hr,|,sub,sup,|,emotions,|,ltr,rtl,|,fullscreen",
        //        theme_advanced_buttons4: "insertlayer,moveforward,movebackward,absolute,|,styleprops,spellchecker,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,blockquote,pagebreak,|,insertfile,insertimage",
        theme_advanced_toolbar_location: "top",
        theme_advanced_toolbar_align: "left",
        theme_advanced_statusbar_location: "bottom",
        theme_advanced_resizing: false,
        template_external_list_url: "js/template_list.js",
        external_link_list_url: "js/link_list.js",
        external_image_list_url: "js/image_list.js",
        media_external_list_url: "js/media_list.js",
        height: 300
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div dir="rtl" style="text-align: center; width: 100%; font-family: ZahraRoosta; background-image: url('images/EHDA/Wallpaper (15).jpg');">
        <table dir="rtl" class="auto-style4">
            <tr>
                <td colspan="2" style="text-align: center; font-family: ZahraRoosta" class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="ZahraRoosta" Font-Size="XX-Large" ForeColor="#0066FF" Text="ثبت خبر جدید"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="h40" dir="rtl" style="text-align: left">
                    <asp:Label ID="Label2" runat="server" Font-Names="TitrZebr" Font-Size="Large" Text="عنوان خبر:"></asp:Label>
                </td>
                <td class="h40" dir="rtl" style="text-align: right">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtTitle" runat="server" Width="426px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td dir="rtl" style="text-align: left" class="h40">
                    <asp:Label ID="Label3" runat="server" Font-Names="Kamva" Font-Size="X-Large" Text="متن کوتاه خبر:"></asp:Label>
                </td>
                <td dir="rtl" style="text-align: right" class="h40">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSmallText" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtSmallText" runat="server" Width="427px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td dir="rtl" style="text-align: left" class="h40">
                    <asp:Label ID="Label4" runat="server" Font-Names="Kamva" Font-Size="X-Large" Text="متن اصلی خبر:"></asp:Label>
                </td>
                <td dir="rtl" style="text-align: right" class="h40">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNewsText" ErrorMessage="*" Font-Size="Large" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtNewsText" runat="server" Font-Names="ZahraRoosta" Height="111px" TextMode="MultiLine" Width="433px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" dir="rtl" style="text-align: center" class="auto-style3">
                    <asp:Button ID="Button1" runat="server" BackColor="Lime" BorderColor="#3366FF" BorderStyle="Solid" Font-Italic="False" Font-Names="ZahraRoosta" Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False" Font-Underline="False" Height="65px" OnClick="Button1_Click" Text="ثبت" ValidationGroup="1" Width="132px" />
                    <br />
                    <br />
                    <asp:Label ID="lblResult" runat="server" Font-Names="Kamva" Font-Size="Large" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
