<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YemekEdit.aspx.cs" Inherits="ASPNetYemekTarifi.YemekEdit" MasterPageFile="~/Admin.Master" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="auto-style46">
        <div align="center">
            <h2>Yemek Düzenle</h2>

            <table class="auto-style39" align="center">
                <tr>
                    <td class="auto-style43"><strong>Yemek Adı:</strong></td>
                    <td class="auto-style34">
                        <asp:TextBox ID="TextBox1" runat="server" Width="253px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style43"><strong>Malzemeler: </strong></td>
                    <td class="auto-style24">
                        <asp:TextBox ID="TextBox2" runat="server" Height="63px" TextMode="MultiLine" Width="253px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style43"><strong>Tarifi:</strong></td>
                    <td class="auto-style36">
                        <asp:TextBox ID="TextBox3" runat="server" Height="109px" TextMode="MultiLine" Width="253px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style43"><strong>Görsel URL:</strong></td>
                    <td class="auto-style28">
                        <asp:TextBox ID="TextBox4" runat="server" Width="245px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style43"><strong>Kategori:</strong></td>
                    <td class="auto-style34">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="39px" Width="253px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style44"></td>
                    <td class="auto-style47"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style45" Text="Güncelle" Width="147px" OnClick="Button1_Click" Height="51px" />
                    </strong></td>
                </tr>
                <tr>
                    <td class="auto-style44">&nbsp;</td>
                    <td class="auto-style42"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="button" Text="Günün Yemeği Olarak Seç" Width="258px" OnClick="Button2_Click" />
                    </strong></td>
                </tr>
            </table>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .auto-style6 {
            text-align: center;
        }

        .auto-style7 {
            text-align: right;
            height: 29px;
        }

        .auto-style8 {
            height: 29px;
        }

        .auto-style9 {
            text-align: right;
            height: 27px;
        }

        .auto-style10 {
            height: 27px;
        }

        .auto-style24 {
            width: 143px;
            height: 38px;
        }

        .auto-style28 {
            position: center;
            width: 143px;
            height: 43px;
        }

        .auto-style34 {
            width: 143px;
            height: 43px;
        }

        .auto-style36 {
            position: center;
            width: 143px;
            height: 114px;
        }

        .auto-style39 {
            height: 226px;
            position: center;
            width: 531px;
        }

        .auto-style42 {
            height: 4px;
            width: 143px;
            text-align: left;
        }

        .auto-style43 {
            width: 429px;
            height: 43px;
        }

        .auto-style44 {
            height: 4px;
            width: 429px;
        }

        .auto-style45 {
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
            margin: 4px 2px 4px 63px;
            cursor: pointer;
            -webkit-transition-duration: 0.4s; 
            
            transition-duration: 0.4s;
        }

        .auto-style46 {
            width: 941px;
            height: 525px;
        }
        .auto-style47 {
            height: 4px;
            width: 143px;
        }
    </style>
</asp:Content>


