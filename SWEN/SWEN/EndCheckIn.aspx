<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EndCheckIn.aspx.cs" Inherits="SWEN.EndCheckIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            text-align: center;
        }
        .auto-style23 {
            text-align: center;
        }
        .auto-style24 {
            width: 139px;
        }
        .auto-style25 {
            text-align: center;
            width: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style21" colspan="3">Check In Succesfully</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21" colspan="3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style24">Room Number:</td>
                <td>
                    <asp:Label ID="lblRoomNumber" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style24">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23" colspan="3">
                    <asp:Button ID="btnHome" runat="server" Text="Home" OnClick="btnHome_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
