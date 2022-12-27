<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="ASPNetYemekTarifi.Yorumlar" MasterPageFile="~/Admin.Master" %>


<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3" BorderStyle="Solid" BorderWidth="4px" Style="background-color: #FFFFFF" Width="1005px">
        <table class="auto-style18">
            <tr>
                <td class="auto-style36"><strong>
                    <asp:Button ID="Button5" runat="server" CssClass="button" Height="47px" Text="+" Width="79px" OnClick="Button5_Click" />
                </strong></td>
                <td class="auto-style37"><strong>
                    <asp:Button ID="Button6" runat="server" CssClass="button" Height="47px" Text="-" Width="79px" />
                </strong></td>
                <td class="auto-style29">
                    <h3><strong>Onaylanan Yorum Listesi</strong></h3>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="1012px" Height="296px" CssClass="auto-style28">
            <ItemTemplate>
                <table class="auto-style1" style="border: thin solid #000000;">
                    <tr>
                        <td class="auto-style25">
                            <strong>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style24">
                            <a href='Yorumlar.aspx?Yorumid=<%#Eval("Yorumid") %>&amp;islem=sil'>
                                <img alt="" src="https://cdn-icons-png.flaticon.com/512/166/166475.png" class="auto-style27" />
                            </a>
                        </td>
                        <td class="auto-style20">
                            <%--   üstüne tıklanan verinin id'sini getirir--%>
                            <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>">
                                <img alt="" src="https://d338t8kmirgyke.cloudfront.net/icons/icon_pngs/000/008/529/original/update.png" class="auto-style22" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style3" Style="background-color: #FFFFFF" BorderStyle="Solid" BorderWidth="4px" Height="62px" Width="1004px">
        <table class="auto-style30">
            <tr>
                <td class="auto-style35"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="button" Height="47px" Text="+" Width="79px" OnClick="Button1_Click" />
                </strong></td>
                <td class="auto-style34"><strong>
                    <asp:Button ID="Button7" runat="server" CssClass="button" Height="47px" Text="-" Width="79px" />
                </strong></td>
                <td>
                    <h3><strong>Onaylanmayan Y</strong>orum Listesi</h3>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server" CssClass="auto-style26">
        <asp:DataList ID="DataList2" runat="server" Width="1012px" Height="296px" CssClass="auto-style28">
            <ItemTemplate>
                <table class="auto-style1" style="border: thin solid #000000;">
                    <tr>
                        <td class="auto-style25"><strong>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </strong></td>
                        <td class="auto-style24"><a href='Yorumlar.aspx?Yorumid=<%#Eval("Yorumid") %>&amp;islem=sil'>
                            <img alt="" src="https://cdn-icons-png.flaticon.com/512/166/166475.png" class="auto-style27" />
                        </a></td>
                        <td class="auto-style20"><%--   üstüne tıklanan verinin id'sini getirir--%>
                            <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>">
                                <img alt="" src="https://d338t8kmirgyke.cloudfront.net/icons/icon_pngs/000/008/529/original/update.png" class="auto-style22" />
                            </a>

                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>



<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .auto-style6 {
            width: 296px;
        }

        .auto-style19 {
            width: 100%;
            height: 178px;
        }

        .auto-style20 {
            text-align: center;
            width: 108px;
        }

        .auto-style22 {
            float: right;
            width: 32px;
            height: 39px;
        }

        .auto-style24 {
            width: 119px;
        }

        .auto-style25 {
            width: 1083px;
        }

        .auto-style26 {
            margin-top: 32px;
        }

        .auto-style27 {
            float: right;
            width: 36px;
            height: 29px;
        }

        .auto-style29 {
            width: 815px;
            height: 60px;
        }

        .auto-style30 {
            width: 1001px;
        }

        .auto-style34 {
            text-align: left;
            width: 82px;
        }

        .auto-style35 {
            text-align: left;
            width: 76px;
        }

        .auto-style36 {
            width: 66px;
            height: 60px;
            text-align: left;
        }

        .auto-style37 {
            text-align: left;
            width: 83px;
        }

        .auto-style42 {
            width: 531px;
            height: 26px;
        }
    </style>
</asp:Content>




