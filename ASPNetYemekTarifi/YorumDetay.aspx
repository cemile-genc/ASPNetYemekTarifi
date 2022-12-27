<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="ASPNetYemekTarifi.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 305px;
        }
        .auto-style12 {
            width: 305px;
            height: 29px;
            text-align: right;
        }
        .auto-style13 {
            height: 29px;
        }
        .auto-style14 {
            width: 305px;
            text-align: right;
        }
        .auto-style15 {
            width: 124%;
            height: 324px;
        }
        .auto-style16 {
            text-align: left;
        }
        .auto-style17 {
            width: 305px;
            text-align: right;
            height: 32px;
        }
        .auto-style18 {
            height: 32px;
        }
        .auto-style19 {
            width: 300px;
            text-align: center;
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style15">
            <tr>
        <td class="auto-style11">&nbsp;</td>
        <td>
            <h2 class="auto-style19">Yorum Düzenle</h2>
        </td>
    </tr>
        <tr>
            <td class="auto-style12">
                <h3><strong>Yorum Ad Soyad :</strong></h3>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TxtAdSoyad" runat="server" Width="265px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                <h3><strong>Yorum Mail:</strong></h3>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TxtMail" runat="server" Width="263px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                <h3><strong>Yorum İçerik:</strong></h3>
            </td>
            <td>
                <asp:TextBox ID="Txtİcerik" runat="server" Height="108px" TextMode="MultiLine" Width="263px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                <h3><strong>Yemek:</strong></h3>
            </td>
            <td class="auto-style18">
                <asp:TextBox ID="TxtYemek" runat="server" Width="260px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style16">
                <asp:Button ID="BtnOnayla" runat="server" CssClass="button" Text="Onayla" OnClick="BtnOnayla_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
