<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YorumEdit.aspx.cs" Inherits="ASPNetYemekTarifi.YorumEdit" MasterPageFile="~/Admin.Master" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="auto-style20">
    <table class="auto-style16">
    <tr>
        <td class="auto-style11"></td>
        <td>
            <h2 class="auto-style17">Yorum Düzenle</h2>
        </td>
    </tr>
    <tr>
        <td class="auto-style11" ><strong>Ad Soyad:</strong></td>
        <td class="auto-style23">
            <asp:TextBox ID="TextBox1" runat="server" Width="294px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11" ><strong>Mail: </strong></td>
        <td class="auto-style23">
            <asp:TextBox ID="TextBox2" runat="server" Width="293px" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>İçerik:</strong></td>
        <td class="auto-style22">
            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="296px" Height="116px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style30"><strong>Yemek Adı:</strong></td>
        <td class="auto-style26">
            <asp:TextBox ID="TextBox4" runat="server" Width="294px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style28"></td>
        <td class="auto-style29"><strong>
            <asp:Button ID="Button1" runat="server" CssClass="button"  Text="Güncelle" Width="142px"  />
            </strong></td>
    </tr>
</table>

    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style6 {
        text-align: right;
    }
        .auto-style7 {
            text-align: right;
            height: 29px;
        }
        .auto-style8 {
            height: 29px;
        }
        .auto-style11 {
            width: 210px;
        }
        .auto-style14 {
            height: 77px;
            position: center;
            width: 210px;
        }
        .auto-style16 {
            width: 98%;
            height: 351px;
        }
        .auto-style17 {
            text-align: center;
            height: 53px;
            width: 663px;
        }
        .auto-style20 {
            width: 867px;
            text-align: center;
            height: 355px;
        }
        .auto-style22 {
            height: 20px;
            position: center;
            text-align: left;
        }
        .auto-style23 {
            text-align: left;
        }
        .auto-style26 {
            height: 20px;
            text-align: left;
        }
        .auto-style28 {
            width: 210px;
            height: 25px;
        }
        .auto-style29 {
            height: 25px;
        }
        .auto-style30 {
            width: 210px;
            height: 20px;
        }
    </style>
</asp:Content>


