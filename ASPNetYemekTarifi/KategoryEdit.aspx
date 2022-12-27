<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KategoryEdit.aspx.cs" Inherits="ASPNetYemekTarifi.KategoryEdit" MasterPageFile="~/Admin.Master" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
     <div class="auto-style46">
        <div align="center" class="auto-style11">
            <h2>Kategori Düzenle</h2>

            <table class="auto-style14">
    <tr>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style15" ><strong>Kategori Adı:</strong></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style17" Width="243px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style16"><strong>Kategori Adet: </strong></td>
        <td class="auto-style13">
            <asp:TextBox ID="TextBox2" runat="server" Width="242px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>Kategori Resim:</strong></td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="254px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style12"></td>
        <td class="auto-style12"><strong>
            <asp:Button ID="Button1" runat="server" CssClass="button" OnClick="Button1_Click" Text="Güncelle" Width="142px" />
            </strong></td>
    </tr>
</table>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style6 {
        text-align: right;
    }
        .auto-style11 {
            width: 819px;
            height: 338px;
        }
        .auto-style12 {
            height: 76px;
        }
        .auto-style13 {
            height: 29px;
        }
        .auto-style14 {
            width: 96%;
            height: 277px;
        }
        .auto-style15 {
            text-align: right;
        }
        .auto-style16 {
            height: 29px;
            text-align: right;
        }
        .auto-style17 {
            margin-left: 0px;
        }
    </style>
</asp:Content>

   