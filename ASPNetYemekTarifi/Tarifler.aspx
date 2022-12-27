<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="ASPNetYemekTarifi.Tarifler" %>

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
            width: 863px;
            height: 60px;
        }

        .auto-style39 {
            width: 1004px;
            margin-left: 0px;
        }

        .auto-style40 {
            width: 43px;
            margin-left: 0px;
            height: 39px;
        }

        .auto-style41 {
            text-align: right;
            height: 62px;
        }

        .auto-style42 {
            width: 935px;
            height: 62px;
            text-align: left;
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
                    <h3><strong>Onaysız Tarif Listesi</strong></h3>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style3" BorderStyle="Solid" BorderWidth="4px" Width="1036px">
        <asp:DataList ID="DataList1" runat="server" Width="1028px" Height="282px" CssClass="auto-style28">
            <ItemTemplate>
                <table class="auto-style39" style="border: thin solid #000000;" align="center">
                    <tr>
                        <td class="auto-style42">
                            <strong>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style41">
                            <%--   üstüne tıklanan verinin id'sini getirir--%>

                            <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>">
                                <img alt="" src="https://static-00.iconduck.com/assets.00/comment-add-icon-256x256-jw3opobt.png" class="auto-style40" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" BorderStyle="Solid" BorderWidth="4px" CssClass="auto-style3" Style="background-color: #FFFFFF" Width="1032px">
            <table class="auto-style18">
                <tr>
                    <td class="auto-style36"><strong>
                        <asp:Button ID="Button7" runat="server" CssClass="button" Height="47px"  Text="+" Width="79px" OnClick="Button7_Click" />
                        </strong></td>
                    <td class="auto-style37"><strong>
                        <asp:Button ID="Button8" runat="server" CssClass="button" Height="47px"  Text="-" Width="79px" OnClick="Button8_Click" />
                        </strong></td>
                    <td class="auto-style29">
                        <h3><strong>Onaylanan Tarif Listesi</strong></h3>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style3" BorderStyle="Solid" BorderWidth="4px" Width="1036px">
        <asp:DataList ID="DataList2" runat="server" Width="1028px" Height="282px" CssClass="auto-style28">
            <ItemTemplate>
                <table class="auto-style39" style="border: thin solid #000000;" align="center">
                    <tr>
                        <td class="auto-style42">
                            <strong>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style41">
                            <%--   üstüne tıklanan verinin id'sini getirir--%>

                            <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>">
                                <img alt="" src="https://static-00.iconduck.com/assets.00/comment-add-icon-256x256-jw3opobt.png" class="auto-style40" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

</asp:Content>
