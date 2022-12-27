<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="ASPNetYemekTarifi.Yemekler" MasterPageFile="~/Admin.Master" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server" align="center" CssClass="auto-style3" BorderStyle="Solid" BorderWidth="4px" style="background-color: #FFFFFF" Width="1005px">
        <table class="auto-style18">
            <tr>
                <td class="auto-style29"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="button" Height="47px" Text="+" Width="79px" OnClick="Button1_Click1"  />
                </strong></td>
                <td class="auto-style30"><strong>
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style32" Height="47px" Text="-" Width="79px" OnClick="Button5_Click" />
                    </strong></td>
                <td class="auto-style23">
                    <h3><strong>Yemek Listesi</strong></h3>
                </td>
            </tr>
        </table> 
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Width="1014px">
        <asp:DataList ID="DataList1" runat="server" Width="1014px" Height="257px" CssClass="auto-style28">
            <ItemTemplate>
                <table class="auto-style24" style="border: thin solid #000000;">
                    <tr>
                        <td class="auto-style26">
                            <strong>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAdı") %>'></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style24">
                            <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid") %>&islem=sil">
                            <img alt="" src="https://cdn-icons-png.flaticon.com/512/166/166475.png" class="auto-style19"/></a>
                        </td>
                        <td class="auto-style20">
                            <%--   üstüne tıklanan verinin id'sini getirir--%>
                            <a href="YemekEdit.aspx?Yemekid=<%#Eval("Yemekid") %>">
                                <img alt="" src="https://d338t8kmirgyke.cloudfront.net/icons/icon_pngs/000/008/529/original/update.png" class="auto-style22" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style3" BorderStyle="Solid" BorderWidth="4px" style="background-color: #FFFFFF" Width="1006px">
        <table class="aotu-style1">
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button6" runat="server" CssClass="button" Height="47px" Text="+" Width="79px" OnClick="Button6_Click"  />
                </strong></td>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button7" runat="server" CssClass="button" Height="47px" Text="-" Width="79px" OnClick="Button7_Click"  />
                </strong></td>
                <td>
                    <h3><strong>Yemek Ekleme</strong></h3>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server" Height="470px" Width="1013px">
        <table class="auto-style33" align="center">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Yemek Ad:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="290px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Malzeme:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="72px" TextMode="MultiLine" Width="291px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Tarif:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="129px" TextMode="MultiLine" Width="291px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Görsel(URL):</strong></td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="287px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Kategori:</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="31px" Width="296px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="button" OnClick="BtnEkle_Click" Text="Ekle" Width="111px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>


</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .auto-style6 {
            width: 41px;
            height: 36px;
        }
        .auto-style7 {
            width: 319px;
            height: 35px;
        }
        .auto-style15 {
            width: 84px;
        }
        .auto-style16 {
            width: 81px;
        }
        .auto-style18 {
            width: 99%;
        }
        .auto-style19 {
            width: 41px;
            height: 31px;
            float: right;
        }
        .auto-style20 {
            text-align: right;
        }
        .auto-style22 {
            width: 48px;
            height: 35px;
            float: right;
        }
        .auto-style23 {
            width: 806px;
        height: 29px;
    }
        .auto-style24 {
            width: 994px;
        }
        .auto-style26 {
            width: 1051px;
        }
        .auto-style28 {
        position: center;
    }
    .auto-style29 {
        height: 29px;
        position: center;
            width: 80px;
        }
    .auto-style30 {
        height: 29px;
            width: 78px;
        }
        .auto-style32 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #4CAF50;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px 4px 0px;
            cursor: pointer;
            -webkit-transition-duration: 0.4s;
        }
        .auto-style33 {
        height: 435px;
            width: 610px;
        }
        </style>

</asp:Content>


