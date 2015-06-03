<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DisplayRates.aspx.cs" Inherits="SWEN.DisplayRates" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style20 {
            width: 130px;
        }
        .auto-style21 {
            width: 129px;
        }
        .auto-style22 {
            width: 152px;
        }
        .auto-style23 {
            text-align: right;
        }
        .auto-style24 {
            width: 152px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <table style="width:100%;">
            <tr>
                <td>Results:</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Check In:</td>
                <td>Check Out</td>
                <td>Night(s)</td>
                <td class="auto-style21">Room Type</td>
                <td class="auto-style20">No of Room(s)</td>
                <td class="auto-style22">Adult:</td>
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
                <td class="auto-style21">
                    <asp:Label ID="lblRoomType" runat="server"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:Label ID="lblRoom" runat="server"></asp:Label>
                </td>
                <td class="auto-style22">
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
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style22">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style24">
                    Room Rates Per Night:</td>
                <td class="auto-style23">
                    <asp:Label ID="lblRates" runat="server"></asp:Label>
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
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style24">
                    Total
                    Amount:</td>
                <td class="auto-style23">
                    <asp:Label ID="lblAmount" runat="server"></asp:Label>
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
                <td class="auto-style21">
                    &nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style22">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
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
