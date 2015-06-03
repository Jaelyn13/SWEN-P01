<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EndReservation.aspx.cs" Inherits="SWEN.End_Reservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style22 {
            width: 181px;
        }
        .auto-style32 {
            width: 876px;
        }
        .auto-style33 {
            width: 162px;
        }
        .auto-style44 {
            width: 362px;
        }
        .auto-style46 {
            width: 136px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <table class="auto-style32">
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style44" colspan="4" style="font-family: 'Arial Black'">Thanks for making a reservation!</td>
                <td class="auto-style33">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style44" colspan="4">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style46">Resevation Number:</td>
                <td class="auto-style44" colspan="3">
                    <asp:Label ID="lblNumber" runat="server"></asp:Label>
                </td>
                <td class="auto-style33">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style46">From:</td>
                <td class="auto-style46">
                    <asp:Label ID="lblDatein" runat="server"></asp:Label>
                </td>
                <td class="auto-style46">
                    To:</td>
                <td class="auto-style46">
                    <asp:Label ID="lblDateOut" runat="server"></asp:Label>
                </td>
                <td class="auto-style33">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style46">No of Room(s):</td>
                <td class="auto-style44" colspan="3">
                    <asp:Label ID="lblRoom" runat="server"></asp:Label>
                </td>
                <td class="auto-style33">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style46">Room Type:</td>
                <td class="auto-style44" colspan="3">
                    <asp:Label ID="lblRoomType" runat="server"></asp:Label>
                </td>
                <td class="auto-style33">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style46">Night(s):</td>
                <td class="auto-style44" colspan="3">
                    <asp:Label ID="lblNight" runat="server"></asp:Label>
                </td>
                <td class="auto-style33">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style46">Adult:</td>
                <td class="auto-style44" colspan="3">
                    <asp:Label ID="lblAdult" runat="server"></asp:Label>
                </td>
                <td class="auto-style33">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style46">Child:</td>
                <td class="auto-style44" colspan="3">
                    <asp:Label ID="lblChild" runat="server"></asp:Label>
                </td>
                <td class="auto-style33">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style44" colspan="3">
                    &nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style46">&nbsp;</td>
                <td class="auto-style44" colspan="3">
                    &nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style44" colspan="4">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style44" colspan="4">
                    <asp:Button ID="btnHome" runat="server" Text="Home" OnClick="btnHome_Click" />
                </td>
                <td class="auto-style33">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style44" colspan="4">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style44" colspan="4">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
