<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TarifOnerisi.aspx.cs" Inherits="ASPNetYemekTarifi.TarifOnerisi" MasterPageFile="~/Kulanici.Master" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="auto-style28">
        <table class="auto-style21">
            <tr>
            <td class="auto-style15" colspan="2" style="border: medium solid #008000;">
                <h2>Tarif Önerisi</h2>
            </td>
            </tr>
        <tr>
            <td class="auto-style7">
                <h3><strong>
                <br class="auto-style27" />
                    <span class="auto-style27">Tarif Adı: </span> </strong></h3>
            </td>
            <td class="auto-style19">
                <asp:TextBox ID="TxtTarifAd" runat="server" Width="260px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style19">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">
                <h3 class="auto-style27"><strong>Malzemeler:</strong></h3>
            </td>
            <td class="auto-style20">
                <asp:TextBox ID="TxtMalzemeler" runat="server" Height="100px" TextMode="MultiLine" Width="260px" CssClass="auto-style27"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">
                <h3 class="auto-style27"><strong>Yapılışı:</strong></h3>
            </td>
            <td class="auto-style20">
                <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="260px" CssClass="auto-style27" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">
                <h3 class="auto-style27"><strong>Resim:</strong></h3>
            </td>
            <td class="auto-style20">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="260px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style25">
                <h3 class="auto-style27"><strong>Tarif Öneren:</strong></h3>
            </td>
            <td class="auto-style20">
                <asp:TextBox ID="TxtTarifOneren" runat="server" Width="260px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">
                <h3 class="auto-style27"><strong>Mail Adresi:</strong></h3>
            </td>
            <td class="auto-style20">
                <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="260px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td class="auto-style24">
                <asp:Button ID="BtnKaydet" runat="server" BorderColor="#FFCCFF" Text="Kaydet" Width="140px" OnClick="BtnKaydet_Click" CssClass="auto-style26" />
            </td>
        </tr>
    </table>
    </div>
    
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style4 {
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
            text-align: right;
        }
        .auto-style7 {
            text-align: left;
            width: 119px;
        height: 50px;
    }
         .auto-style15 {
            height: 32px;
            text-align: center;
            width: auto;
            background-color: #FFFFFF;
        }
        .auto-style19 {
            width: 265px;
        height: 50px;
    }
        .auto-style20 {
            height: 26px;
            width: 265px;
        }
        .auto-style21 {
            height: 406px;
            width: 738px;
        }
        .auto-style23 {
            height: 33px;
            width: 119px;
        text-align: left;
    }
        .auto-style24 {
            height: 33px;
            width: 265px;
            text-align: right;
        }
        .auto-style25 {
        height: auto;
        text-align: left;
        float: left;
        width: 119px;
    }
    .auto-style26 {
        border-style: none;
        border-color: inherit;
        border-width: medium;
        background-color: #4CAF50; /* Green */;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        -webkit-transition-duration: 0.4s; /* Safari */;
        transition-duration: 0.4s;
    }
    .auto-style27 {
        color: #000000;
    }
    .auto-style28 {
        width: 737px;
    }
        .auto-style15 {
            text-align: center;
            width: auto;
            height: 79px;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>


