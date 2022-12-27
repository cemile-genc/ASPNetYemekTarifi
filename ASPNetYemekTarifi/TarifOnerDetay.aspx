<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="ASPNetYemekTarifi.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            position: center;
        }
        .auto-style13 {
            width: 94%;
            height: 340px;
        }
        .auto-style14 {
            width: 423px;
        }
        .auto-style15 {
            height: 26px;
            width: 423px;
        }
        .auto-style17 {
            width: 195px;
        }
        .auto-style18 {
            text-align: right;
            width: 195px;
        }
        .auto-style19 {
            height: 26px;
            text-align: right;
            width: 195px;
        }
        .auto-style20 {
            height: 26px;
            width: 195px;
        }
        .auto-style21 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="419px" Width="835px">
        <table class="auto-style13" style="border: thin solid #000000;">
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Tarif Adı: </strong></td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Malzemeler:</strong></td>
                <td class="auto-style14"><strong>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style12" Width="200px" Height="16px"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style18"><strong>Yapılışı:</strong></td>
                <td class="auto-style14"><strong style="border: thin solid #000000;">
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" Width="200px" BorderStyle="None" TextMode="MultiLine"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <h3>Resim(URL):</h3>
                </td>
                <td class="auto-style14"><strong>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style12" Height="16px" Width="200px"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <h3>Tarifi Öneren:</h3>
                </td>
                <td class="auto-style15"><strong>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style12" Height="16px" Width="200px"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <h3>Öneren Mail:</h3>
                </td>
                <td class="auto-style15"><strong>
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style12" Height="16px" Width="200px"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <h3 class="auto-style21">Kategori:</h3>
                </td>
                <td class="auto-style15">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="button" Height="48px" OnClick="Button2_Click" Text="Güncelle" Width="190px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
