<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="ASPNetYemekTarifi.Mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style36 {
            width: 66px;
            height: 60px;
            text-align: left;
        }

        .auto-style37 {
            text-align: left;
            width: 83px;
            height: 60px;
        }

        .auto-style29 {
            width: 859px;
            height: 60px;
        }

        .auto-style39 {
            width: 47px;
            height: 38px;
            float: right;
        }

        .auto-style42 {
            width: 843px;
            height: 0px;
        }

        .auto-style44 {
            width: 4329px;
            text-align: left;
            height: 18px;
        }

        .auto-style45 {
            width: 48px;
            height: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3" BorderStyle="Solid" BorderWidth="4px" Style="background-color: #FFFFFF" Width="1032px">
        <table class="auto-style18">
            <tr>
                <td class="auto-style36"><strong>
                    <asp:Button ID="Button5" runat="server" CssClass="button" Height="47px" Text="+" Width="79px" OnClick="Button5_Click" />
                </strong></td>
                <td class="auto-style37"><strong>
                    <asp:Button ID="Button6" runat="server" CssClass="button" Height="47px" Text="-" Width="79px" OnClick="Button6_Click" />
                </strong></td>
                <td class="auto-style29">
                   <h3><strong>Mesaj Listesi</strong></h3>
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style3" BorderStyle="Solid" BorderWidth="4px" Width="1030px">
        <asp:DataList ID="DataList1" runat="server" Width="1028px" Height="282px" CssClass="auto-style28">
            <ItemTemplate>
                <table class="auto-style42" style="border: thin solid #000000;" align="center">
                    <tr>
                        <td class="auto-style44">
                            <strong>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style45">
                            <%--   üstüne tıklanan verinin id'sini getirir--%>

                            <a href="MesajDetay.aspx?mesajid=<%#Eval("mesajid") %>">
                                <img alt="" src="https://cdn2.iconfinder.com/data/icons/cosmetic-packaging-symbols/128/Cosmetic_Symbols-33-512.png" class="auto-style39" /></a>

                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

    </asp:Panel>

</asp:Content>
