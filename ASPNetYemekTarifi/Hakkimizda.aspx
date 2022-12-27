<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="ASPNetYemekTarifi.Hakkimizda" MasterPageFile="~/Kulanici.Master" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <h2 class="auto-style13" style="border: thin solid #008000">HAKKIMIZDA</h2>
    <div class="auto-style12">
    <asp:DataList ID="DataList2" runat="server" Width="751px">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>

    </div>

    <img alt="" src="https://startatbest.eu/wp-content/uploads/2020/01/10-W-TRENDS.jpg" class="auto-style11" />
</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style4 {
            width: 447px;
            height: 289px;
        }
        .auto-style11 {
            width: 755px;
            height: 530px;
        }
        .auto-style12 {
            text-align: center;
            width: 753px;
        }
        .auto-style13 {
            text-decoration: underline;
        }
    </style>
</asp:Content>



