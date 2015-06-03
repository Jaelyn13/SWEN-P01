<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EndReservation.aspx.cs" Inherits="SWEN.End_Reservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style22 {
            width: 181px;
        }
        .auto-style32 {
            width: 876px;
            height: 467px;
        }
        .auto-style33 {
            width: 162px;
            height: 46px;
        }
        .auto-style44 {
            width: 362px;
            height: 46px;
        }
        .auto-style47 {
            width: 179px;
            height: 46px;
        }
        .auto-style62 {
            width: 179px;
            height: 26px;
        }
        .auto-style64 {
            width: 362px;
            height: 26px;
        }
        .auto-style65 {
            width: 162px;
            height: 26px;
        }
        .auto-style95 {
            width: 179px;
            height: 25px;
        }
        .auto-style96 {
            width: 362px;
            height: 25px;
        }
        .auto-style97 {
            width: 162px;
            height: 25px;
        }
        .auto-style98 {
            width: 136px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <table class="auto-style32">
            <tr>
                <td class="auto-style47"></td>
                <td class="auto-style44" colspan="4" style="font-family: 'Arial Black'; text-align: right;">Thanks for making a reservation!</td>
                <td class="auto-style33"></td>
            </tr>
            <tr>
                <td class="auto-style95">&nbsp;</td>
                <td class="auto-style96" colspan="4"></td>
                <td class="auto-style97"></td>
            </tr>
            <tr>
                <td class="auto-style95"></td>
                <td class="auto-style98">Resevation Number:</td>
                <td class="auto-style96" colspan="3">
                    <asp:Label ID="lblNumber" runat="server"></asp:Label>
                </td>
                <td class="auto-style97"></td>
            </tr>
            <tr>
                <td class="auto-style95"></td>
                <td class="auto-style98">From:</td>
                <td class="auto-style98">
                    <asp:Label ID="lblDatein" runat="server"></asp:Label>
                </td>
                <td class="auto-style98">
                    To:</td>
                <td class="auto-style98">
                    <asp:Label ID="lblDateOut" runat="server"></asp:Label>
                </td>
                <td class="auto-style97"></td>
            </tr>
            <tr>
                <td class="auto-style95"></td>
                <td class="auto-style98">No of Room(s):</td>
                <td class="auto-style96" colspan="3">
                    <asp:Label ID="lblRoom" runat="server"></asp:Label>
                </td>
                <td class="auto-style97"></td>
            </tr>
            <tr>
                <td class="auto-style95"></td>
                <td class="auto-style98">Room Type:</td>
                <td class="auto-style96" colspan="3">
                    <asp:Label ID="lblRoomType" runat="server"></asp:Label>
                </td>
                <td class="auto-style97"></td>
            </tr>
            <tr>
                <td class="auto-style95"></td>
                <td class="auto-style98">Night(s):</td>
                <td class="auto-style96" colspan="3">
                    <asp:Label ID="lblNight" runat="server"></asp:Label>
                </td>
                <td class="auto-style97"></td>
            </tr>
            <tr>
                <td class="auto-style95"></td>
                <td class="auto-style98">Adult:</td>
                <td class="auto-style96" colspan="3">
                    <asp:Label ID="lblAdult" runat="server"></asp:Label>
                </td>
                <td class="auto-style97"></td>
            </tr>
            <tr>
                <td class="auto-style95"></td>
                <td class="auto-style98">Child:</td>
                <td class="auto-style96" colspan="3">
                    <asp:Label ID="lblChild" runat="server"></asp:Label>
                </td>
                <td class="auto-style97"></td>
            </tr>
            <tr>
                <td class="auto-style95"></td>
                <td class="auto-style98"></td>
                <td class="auto-style96" colspan="3">
                    </td>
                <td class="auto-style97"></td>
            </tr>
            <tr>
                <td class="auto-style95"></td>
                <td class="auto-style98"></td>
                <td class="auto-style96" colspan="3">
                    </td>
                <td class="auto-style97"></td>
            </tr>
            <tr>
                <td class="auto-style95"></td>
                <td class="auto-style96" colspan="4"></td>
                <td class="auto-style97"></td>
            </tr>
            <tr>
                <td class="auto-style95"></td>
                <td class="auto-style96" colspan="4">
                    <asp:Button ID="btnHome" runat="server" Text="Home" OnClick="btnHome_Click" />
                </td>
                <td class="auto-style97"></td>
            </tr>
            <tr>
                <td class="auto-style62"></td>
                <td class="auto-style64" colspan="4"></td>
                <td class="auto-style65"></td>
            </tr>
            <tr>
                <td class="auto-style62"></td>
                <td class="auto-style64" colspan="4"></td>
                <td class="auto-style65"></td>
            </tr>
        </table>
    </div>
</asp:Content>
