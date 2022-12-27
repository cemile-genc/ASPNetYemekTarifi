<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="ASPNetYemekTarifi.WebForm3" MasterPageFile="~/Kulanici.Master" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="auto-style21">
        <table class="auto-style19" align="center">
            <tr>
            <td class="auto-style15" colspan="2" style="border: medium solid #008000;">
                <h3>Günün Yemeği</h3>
            </td>
            </tr>
            <td class="auto-style22" style="border-top-style: solid; border-bottom-style: solid; border-top-width: thin; border-bottom-width: thin; border-top-color: #008000; border-bottom-color: #008000">

                <asp:DataList ID="DataList2" runat="server" Width="580px">

                    <ItemTemplate>

                        <h3 style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #008000"><strong>Yemek Adı:</strong> <strong>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekAdı") %>'></asp:Label>
                            </strong></h3>
                        <strong>
                            <br />
                            <h4>Malzemeler:<strong>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                                </strong></h4>
                        </strong>
                        <h4><strong>Tarif:</strong></h4>
                        <strong>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                            <br />
                            <br />
                            <img alt="" class="auto-style20" src="<%# Eval("YemekResim") %>" />
                        </strong>
                        <strong>
                            <br />
                            <br />
                            Puan:
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                            <br />
                            Eklenme&nbsp; Tarih:</strong>
                        <strong>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        </strong>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            </tr>
        </table>

    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .auto-style4 {
            width: 416px;
            height: 210px;
        }
         .auto-style15 {
            height: 32px;
            text-align: center;
            width: auto;
            background-color: #FFFFFF;
        }

        .auto-style19 {
            width: auto;
        }

        .auto-style20 {
            width: 232px;
            height: 127px;
        }

        .auto-style21 {
            width: 815px;
            height: auto;
        }

        .auto-style22 {
            text-align: center;
            width: 602px;
        }

        .auto-style25 {
            height: 44px;
        }
        .auto-style27 {
            width: 490px;
            height: 0px;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>


