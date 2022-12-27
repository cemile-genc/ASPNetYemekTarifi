<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="ASPNetYemekTarifi.Anasayfa" MasterPageFile="~/Kulanici.Master" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">

    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style11" Height="538px" Width="822px">
        <ItemTemplate>
            <table class="auto-style5" style="border-style: solid; border-width: medium">
                <tr>
                    <td class="auto-style7" style="border: thin solid #008000;">
                        <h2>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekAdı") %>' CssClass="auto-style14"></asp:Label>
                        </h2>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" style="border: thin solid #008000"><strong>Malzemeler:</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" style="border: thin solid #008000"><strong>Yemek Tarifi:</strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" style="border: thin solid #008000"><strong>Eklenme Tarihi:</strong>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        <strong>&nbsp;- Puanı:</strong>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <br />
    <br />

</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            width: 108%;
        height: 272px;
    }
        .auto-style6 {
            height: auto;
            float: left;
            width: auto;
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style7 {
            height: 91px;
            width: 783px;
        background-color: #2ECC71;
    }
        .auto-style11 {
            float: left;
            background-color: #FFFFFF;
        }
        .auto-style13 {
        text-align: center;
        width: 783px;
    }
    .auto-style14 {
        text-decoration: underline;
    }
    </style>
</asp:Content>



