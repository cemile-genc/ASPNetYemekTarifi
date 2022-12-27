<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="ASPNetYemekTarifi.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style18 {
            width: 99%;
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
        .auto-style23 {
            width: 806px;
        height: 29px;
    }
        .auto-style35 {
            width: 686px;
            text-align: right;
        }
        .auto-style36 {
            width: 1911px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" align="center" CssClass="auto-style3" BorderStyle="Solid" BorderWidth="4px" style="background-color: #FFFFFF" Width="1005px">
        <table class="auto-style18">
            <tr>
                <td class="auto-style29"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="button" Height="47px" Text="+" Width="79px" OnClick="Button1_Click"   />
                    </strong></td>
                <td class="auto-style30"><strong>
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style32" Height="47px" Text="-" Width="79px" OnClick="Button5_Click"  />
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
                        <td class="auto-style36">
                            <strong>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAdı") %>'></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style35">
                            <%--   üstüne tıklanan verinin id'sini getirir--%>
                            &nbsp;<asp:Image ID="Image1" runat="server" Height="48px" ImageUrl="https://w7.pngwing.com/pngs/1005/467/png-transparent-font-awesome-computer-icons-check-mark-font-others-miscellaneous-angle-text.png" Width="48px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
