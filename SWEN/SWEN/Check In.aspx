<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Check In.aspx.cs" Inherits="SWEN.Check_In" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        .auto-style20 {
            width: 243px;
        }
        .auto-style21 {
            width: 213px;
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
        .auto-style25 {
            width: 143px;
        }
        .auto-style26 {
            width: 112px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
    <table style="width:100%;">
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style25" style="font-family: 'Arial Black'">&nbsp;</td>
            <td class="auto-style26" style="font-family: 'Arial Black'">Check In</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style23" colspan="2"></td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style21" colspan="2">
                <asp:Button ID="tbxCheckin" runat="server" Text="New Check In" />
            </td>
            <td>
                <asp:Button ID="tbxEnterReservation" runat="server" Text="Enter Reservation No." />
            </td>
        </tr>
    </table>
        </div>
</asp:Content>