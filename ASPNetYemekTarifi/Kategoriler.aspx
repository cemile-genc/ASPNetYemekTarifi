<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="ASPNetYemekTarifi.Kategoriler" MasterPageFile="~/Admin.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style6 {
            margin-bottom: 0px;
            margin-top: 0px;
        }

        .auto-style17 {
            text-align: center;
            width: 3110px;
            height: 25px;
        }

        .auto-style19 {
            width: 24px;
        }

        .auto-style20 {
            width: 27px;
        }

        .auto-style21 {
            background-color: #FFFFFF;
        }
        .auto-style22 {
            width: 100px;
            height: 25px;
        }
        .auto-style27 {
            width: 56px;
            height: 34px;
        }
        .auto-style28 {
            background-color: #E94BA2;
        }
        .auto-style29 {
            width: 94%;
        }
        .auto-style34 {
            width: 24px;
            height: 59px;
        }
        .auto-style35 {
            width: 27px;
            height: 59px;
        }
        .auto-style36 {
            text-align: center;
            height: 59px;
            width: 661px;
        }
        .auto-style45 {
            width: 369px;
        }
        .auto-style47 {
            height: 43px;
            text-align: right;
            width: 369px;
        }
        .auto-style48 {
            height: 43px;
            text-align: left;
        }
        .auto-style50 {
            width: 891px;
        }
        .auto-style51 {
            width: 713px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3" BorderStyle="Solid" BorderWidth="4px" style="background-color: #FFFFFF" Width="1005px">
        <table class="auto-style18">
            <tr>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="button" Height="47px" OnClick="Button1_Click" Text="+" Width="79px" />
                </strong></td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="button" Height="47px" OnClick="Button2_Click" Text="-" Width="79px" />
                </strong></td>
                <td class="auto-style51">
                    <h3 class="auto-style3"><strong>Kategori Listesi</strong></h3>
                </td>
            </tr>
        </table> 
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style21" Width="1007px">
        <asp:DataList ID="DataList1" runat="server" Width="1008px" Height="394px" CssClass="auto-style28">
            <ItemTemplate>
                <table class="auto-style1" style="border: thin solid #000000;">
                    <tr>
                        <td class="auto-style17">
                            <strong>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style22">
                            <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil" class="auto-style22">
                            <img alt="" src="https://cdn-icons-png.flaticon.com/512/166/166475.png" class="auto-style27" /></a>
                        </td>
                        <td class="auto-style22">
                            <%--   üstüne tıklanan verinin id'sini getirir--%>
                            <a href="KategoryEdit.aspx?Kategoriid=<%#Eval("Kategoriid") %>">
                                <img alt="" src="https://d338t8kmirgyke.cloudfront.net/icons/icon_pngs/000/008/529/original/update.png" class="auto-style27" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style3" style="background-color: #FFFFFF" BorderStyle="Solid" BorderWidth="4px" Height="62px">
        <table class="auto-style50">
            <tr>
                <td class="auto-style34"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="button" Height="47px" Text="+" Width="79px" OnClick="Button3_Click" />
                </strong></td>
                <td class="auto-style35"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="button" Height="47px" Text="-" Width="79px" OnClick="Button4_Click" />
                </strong></td>
                <td class="auto-style36">
                    <h3><strong>Kategori Ekleme</strong></h3>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <div class="auto-style3">
    <asp:Panel ID="Panel5" runat="server">
        <table class="auto-style29">
            <tr>
                <td class="auto-style45">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style47">
                    <h4><strong>Kategori Ad:</strong></h4>
                </td>
                <td class="auto-style48">
                    <asp:TextBox ID="TextBox1" runat="server" Width="269px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style47">
                    <h4><strong>Kategori İcon:</strong></h4>
                </td>
                <td class="auto-style48">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="276px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style47">&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnEkle" runat="server" Text="Ekle" OnClick="BtnEkle_Click" Width="134px" CssClass="button" Height="48px" />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>
    </div>
</asp:Content>

