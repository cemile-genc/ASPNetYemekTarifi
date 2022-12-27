<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="ASPNetYemekTarifi.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 156%;
        }
        .auto-style12 {
            height: 26px;
            text-align: right;
            width: 309px;
        }
        .auto-style13 {
            text-align: right;
            width: 309px;
        }
        .auto-style14 {
            width: 309px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <h3>Mesaj Gönderen:</h3>
            </td>
            <td>
                <asp:TextBox ID="TxtMesajGonderen" runat="server" Width="268px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                <h3>Mesaj Başlığı:</h3>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TxtMesajBaslik" runat="server" Width="268px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                <h3>Mail Adresi:</h3>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TxtMail" runat="server" Width="268px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">
                <h3>Mesaj İçeriği:</h3>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TxtMEsajİcerik" runat="server" Height="159px" TextMode="MultiLine" Width="271px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
