<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="ASPNetYemekTarifi.KategoriDetay" MasterPageFile="~/Kulanici.Master" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">

        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            width: 100%;
            height: 239px;
        }
        .auto-style6 {
            background-color: #FFFFFF;
        }
        .auto-style8 {
            text-align: center;
            height: 26px;
            width: 817px;
        }
        .auto-style11 {
            text-align: right;
        }
        .auto-style12 {
            height: 27px;
            text-align: center;
            width: 817px;
        }
        .auto-style14 {
        text-decoration: underline;
            text-align: center;
            width: 820px;
            color: #000000;
        }
        .auto-style15 {
            text-align: center;
            width: 817px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">

        <asp:DataList ID="DataList2" runat="server" CssClass="auto-style11" Height="538px" Width="822px">
    <ItemTemplate>
        <table class="auto-style5" style="border-style: solid; border-width: medium">
            <tr>
                <td class="auto-style15" style="background-color: #FFFFFF">
                    <h2 class="center"><strong style="background-color: #FFFFFF;">
                        <a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekAdı") %>' CssClass="auto-style14"></asp:Label>
                        </a></strong></h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>Malzemeler: </strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>Yemek Tarifi:</strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Eklenme Tarihi:</strong>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    <strong>&nbsp;- Puanı:</strong>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>

</asp:Content>


