<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DisplayCheckIn.aspx.cs" Inherits="SWEN.DisplayCheckIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style20 {
        }
        .auto-style21 {
            width: 106px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style20" colspan="2">Check In / Delete</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">Check In:</td>
                <td>Check Out</td>
                <td>Night</td>
                <td>Room Type</td>
                <td>Room</td>
                <td>Adult:</td>
                <td>Child:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <asp:Label ID="lblDatein" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblDateOut" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblNight" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblRoomType" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblRoom" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblAdult" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblChild" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnCheckIn" runat="server" OnClick="btnCheckIn_Click" Text="Check In" />
                </td>
                <td>
                    <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                </td>
                <td>
                    <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Home" Visible="False" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>