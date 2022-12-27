<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="ASPNetYemekTarifi.İletisim" MasterPageFile="~/Kulanici.Master" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <table class="auto-style11" style="border: thin solid #008000">
        <tr>
            <td class="auto-style15" colspan="2" style="border-bottom-style: groove; border-bottom-width: 3px; border-bottom-color: #000000">
                <h2>Mesaj Paneli</h2>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Adınız ve Soyadınız:</strong></td>
            <td class="auto-style14">
                <asp:TextBox ID="TxtAdSoyad" runat="server" Width="307px" CssClass="auto-style17"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="center"><strong>Mail Adresiniz:</strong></td>
            <td class="auto-style14">
                <asp:TextBox ID="TxtMail" runat="server" Width="307px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="center"><strong>Mesaj Konusu:</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="TxtKonu" runat="server" Width="307px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="center"><strong>Mesaj İçeriği:</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="Txtİcerik" runat="server" Height="200px" TextMode="MultiLine" Width="307px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style16"><strong>
                <asp:Button ID="Button1" class="btn" runat="server" CssClass="button" Text="Gönder" Width="145px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style4 {
            height: 35px;
        text-align: center;
        background-color: #FFFFFF;
    }
        .auto-style6 {
            height: 29px;
            text-align: right;
        }
        .auto-style11 {
            width: 761px;
        }
        .auto-style13 {
            text-align: center;
            height: 32px;
        }
        .auto-style14 {
            height: 32px;
            width: 321px;
        }
        .auto-style15 {
            height: 32px;
            text-align: center;
            width: auto;
            background-color: #FFFFFF;
        }
        .auto-style16 {
            width: 321px;
        }
        .auto-style17 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
        </style>
</asp:Content>


