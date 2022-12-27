<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="ASPNetYemekTarifi.YemekDetay" MasterPageFile="~/Kulanici.Master" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

    <h3 class="auto-style16"><strong>

        <asp:Label ID="Label3" runat="server" Text="Label" CssClass="auto-style6"></asp:Label>
    </strong></h3>
    <div class="auto-style3">
        <asp:DataList ID="DataList2" runat="server" Width="432px" Height="300px">
            <ItemTemplate>
                <table class="auto-style15" style="border-bottom-style: outset; border-bottom-width: 3px; border-bottom-color: #000000;">
                    <tr>
                        <td class="auto-style14">
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style7" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label5" runat="server" CssClass="auto-style5" Text='<%# Eval("Yorumİcerik") %>'></asp:Label>
                            &nbsp;-
                            <asp:Label ID="Label6" runat="server" Style="font-size: xx-small" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <br />


    <br />
    <div style="border-bottom: 3px outset #000000; border-bottom-style: outset; border-bottom-width: 2px; font-size: large; color: #000000; border-top-style: solid; border-top-width: 2px;" class="auto-style13"><strong>Yorum Yapma Paneli&nbsp;&nbsp;&nbsp; </strong></div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="aotu-style1" style="border-bottom-color: #000000; border-bottom-style: groove; border-bottom-width: thin">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>Ad Soyad: </strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>Mail:</strong></td>
                <td><strong>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style10" Width="200px"></asp:TextBox>
                </strong></td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>Yorumunuz:</strong></td>
                <td><strong>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style10" Height="100px" Width="200px"></asp:TextBox>
                </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" Text="Yorum Yap" OnClick="Button1_Click" />

                </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>


<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .auto-style5 {
            font-size: medium;
        }

        .auto-style6 {
            font-size: xx-large;
            background-color: #FFFFFF;
        }

        .auto-style7 {
            font-size: large;
        }

        .auto-style8 {
            height: 39px;
        }

        .auto-style10 {
            margin-top: 5px;
        }

        .auto-style11 {
            text-align: right;
        }

        .auto-style13 {
            text-align: center;
            font-size: large;
            background-color: #FFCCFF;
        }

        .auto-style14 {
            height: 29px;
        }

        .auto-style15 {
            width: 104%;
        }

        .auto-style16 {
            text-align: center;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>



