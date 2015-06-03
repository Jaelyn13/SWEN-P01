<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="SWEN.Reservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            width: 213px;
            height: 89px;
        }
        .auto-style22 {
            width: 243px;
            height: 26px;
        }
        .auto-style23 {
            width: 213px;
            height: 26px;
        }
        .auto-style24 {
            height: 26px;
        }
        .auto-style27 {
            width: 174px;
            height: 50px;
        }
        .auto-style29 {
            width: 174px;
            height: 78px;
        }
        .auto-style30 {
            height: 78px;
            width: 175px;
        }
        .auto-style32 {
            width: 876px;
        }
        .auto-style34 {
            height: 28px;
            width: 175px;
        }
        .auto-style35 {
            width: 1170px;
            height: 28px;
        }
        .auto-style36 {
            width: 315px;
            height: 78px;
            text-align: center;
        }
        .auto-style39 {
            width: 174px;
            height: 28px;
        }
        .auto-style43 {
            width: 175px;
            height: 50px;
        }
        .auto-style44 {
            width: 175px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
    <table class="auto-style32">
        <tr>
            <td class="auto-style27"></td>
            <td class="auto-style43" style="font-family: 'Arial Black'; text-align: right;">&nbsp;</td>
            <td class="auto-style43" style="font-family: 'Arial Black'; text-align: right;">Reservation</td>
            <td class="auto-style43"></td>
            <td class="auto-style44"></td>
        </tr>
        <tr>
            <td class="auto-style39"></td>
            <td class="auto-style35" colspan="2"></td>
            <td class="auto-style34"></td>
            <td class="auto-style44"></td>
        </tr>
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style36" colspan="2">
                <asp:Button ID="btnNew" runat="server" Text="New Reservation" OnClick="btnNew_Click" />
            </td>
            <td class="auto-style30">
                <asp:Button ID="btnEdit" runat="server" Text="View/Update/Delete Reservation" OnClick="btnEdit_Click" />
            </td>
            <td class="auto-style30"></td>
        </tr>
    </table>
        </div>
</asp:Content>
