<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DisplayRates.aspx.cs" Inherits="SWEN.DisplayRates" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <table style="width:100%;">
            <tr>
                <td>Search result for:</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Check In:</td>
                <td>Check Out</td>
                <td>Night</td>
                <td>Room Type</td>
                <td>Room</td>
                <td>Adult:</td>
                <td>Child:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
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
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" Text="Confirm" />
                </td>
                <td>
                    <asp:Button ID="btnNext" runat="server" OnClick="btnNext_Click" Text="Next" Visible="False" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
