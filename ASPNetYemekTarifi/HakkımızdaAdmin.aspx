<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkımızdaAdmin.aspx.cs" Inherits="ASPNetYemekTarifi.HakkımızdaAdmin" %>
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
            width: 886px;
            height: 60px;
        }

        .auto-style38 {
            width: 845px;
        }
    .auto-style39 {
        width: 95%;
    }
    .auto-style40 {
        height: 210px;
            text-align: center;
        }
        .auto-style41 {
            width: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3" BorderStyle="Solid" BorderWidth="4px" Style="background-color: #FFFFFF" Width="1064px">
        <table class="auto-style18">
            <tr>
                <td class="auto-style36"><strong>
                    <asp:Button ID="Button5" runat="server" CssClass="button" Height="47px" Text="+" Width="79px" OnClick="Button5_Click" />
                    </strong></td>
                <td class="auto-style37"><strong>
                    <asp:Button ID="Button6" runat="server" CssClass="button" Height="47px" Text="-" Width="79px" OnClick="Button6_Click" />
                    </strong></td>
                <td class="auto-style29">
                    <h3 class="auto-style38">Hakkımızda</h3>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style39">
            <tr>
                <td class="auto-style40">
                    <asp:TextBox ID="TextBox1" runat="server" Height="200px" TextMode="MultiLine" Width="700px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button7" runat="server" CssClass="button" Text="Güncelle" OnClick="Button7_Click" />
                </td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>
