<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DisplayRates.aspx.cs" Inherits="SWEN.DisplayRates" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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
        .auto-style25 {
            height: 12px;
        }
        .auto-style29 {
            height: 34px;
        }
        .auto-style33 {
            height: 38px;
        }
        .auto-style40 {
            width: 192px;
            text-align: right;
            height: 28px;
        }
        .auto-style41 {
            text-align: right;
            height: 28px;
            width: 110px;
        }
        .auto-style42 {
            height: 28px;
            width: 110px;
        }
        .auto-style48 {
            width: 192px;
            text-align: right;
            height: 36px;
        }
        .auto-style49 {
            text-align: right;
            height: 36px;
            width: 110px;
        }
        .auto-style50 {
            height: 36px;
            width: 110px;
        }
        .auto-style57 {
            width: 876px;
        }
        .auto-style65 {
            height: 34px;
            width: 109px;
        }
        .auto-style68 {
            height: 34px;
            width: 110px;
        }
        .auto-style69 {
            height: 38px;
            width: 109px;
        }
        .auto-style72 {
            height: 38px;
            width: 110px;
        }
        .auto-style73 {
            height: 28px;
            width: 109px;
        }
        .auto-style76 {
            height: 36px;
            width: 109px;
        }
        .auto-style86 {
            height: 12px;
            width: 109px;
        }
        .auto-style87 {
            height: 12px;
            width: 110px;
        }
        .auto-style88 {
            width: 109px;
        }
        .auto-style89 {
            width: 110px;
        }
        .auto-style90 {
            height: 12px;
            width: 192px;
        }
        .auto-style91 {
            height: 34px;
            width: 192px;
        }
        .auto-style92 {
            height: 38px;
            width: 192px;
        }
        .auto-style93 {
            width: 192px;
        }
        .auto-style94 {
            width: 192px;
            height: 45px;
        }
        .auto-style95 {
            height: 12px;
            width: 145px;
        }
        .auto-style96 {
            height: 34px;
            width: 145px;
        }
        .auto-style97 {
            height: 38px;
            width: 145px;
        }
        .auto-style98 {
            height: 28px;
            width: 145px;
        }
        .auto-style99 {
            height: 36px;
            width: 145px;
        }
        .auto-style100 {
            width: 145px;
        }
        .auto-style101 {
            width: 109px;
            height: 45px;
        }
        .auto-style102 {
            width: 145px;
            height: 45px;
        }
        .auto-style103 {
            height: 45px;
        }
        .auto-style104 {
            width: 110px;
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <table class="auto-style57">
            <tr>
                <td class="auto-style86">Results:</td>
                <td class="auto-style86"></td>
                <td class="auto-style86"></td>
                <td class="auto-style86"></td>
                <td class="auto-style95"></td>
                <td class="auto-style90"></td>
                <td class="auto-style25"></td>
                <td class="auto-style87"></td>
            </tr>
            <tr>
                <td class="auto-style65">Check In:</td>
                <td class="auto-style65">Check Out</td>
                <td class="auto-style65">Night(s)</td>
                <td class="auto-style65">Room Type</td>
                <td class="auto-style96">No of Room(s)</td>
                <td class="auto-style91">Adult:</td>
                <td class="auto-style29">Child:</td>
                <td class="auto-style68"></td>
            </tr>
            <tr>
                <td class="auto-style69">
                    <asp:Label ID="lblDatein" runat="server"></asp:Label>
                </td>
                <td class="auto-style69">
                    <asp:Label ID="lblDateOut" runat="server"></asp:Label>
                </td>
                <td class="auto-style69">
                    <asp:Label ID="lblNight" runat="server"></asp:Label>
                </td>
                <td class="auto-style69">
                    <asp:Label ID="lblRoomType" runat="server"></asp:Label>
                </td>
                <td class="auto-style97">
                    <asp:Label ID="lblRoom" runat="server"></asp:Label>
                </td>
                <td class="auto-style92">
                    <asp:Label ID="lblAdult" runat="server"></asp:Label>
                </td>
                <td class="auto-style33">
                    <asp:Label ID="lblChild" runat="server"></asp:Label>
                </td>
                <td class="auto-style72"></td>
            </tr>
            <tr>
                <td class="auto-style86">
                    </td>
                <td class="auto-style86">
                    </td>
                <td class="auto-style86">
                    </td>
                <td class="auto-style86">
                    </td>
                <td class="auto-style95">
                    </td>
                <td class="auto-style90">
                    </td>
                <td class="auto-style25">
                    </td>
                <td class="auto-style87"></td>
            </tr>
            <tr>
                <td class="auto-style73">
                    </td>
                <td class="auto-style73">
                    </td>
                <td class="auto-style73">
                    </td>
                <td class="auto-style73">
                    </td>
                <td class="auto-style98">
                    </td>
                <td class="auto-style40">
                    Room Rates Per Night:</td>
                <td class="auto-style41">
                    <asp:Label ID="lblRates" runat="server"></asp:Label>
                </td>
                <td class="auto-style42"></td>
            </tr>
            <tr>
                <td class="auto-style76">
                    </td>
                <td class="auto-style76">
                    </td>
                <td class="auto-style76">
                    </td>
                <td class="auto-style76">
                    </td>
                <td class="auto-style99">
                    </td>
                <td class="auto-style48">
                    Total
                    Amount:</td>
                <td class="auto-style49">
                    <asp:Label ID="lblAmount" runat="server"></asp:Label>
                </td>
                <td class="auto-style50"></td>
            </tr>
            <tr>
                <td class="auto-style88">
                    </td>
                <td class="auto-style88">
                    </td>
                <td class="auto-style88">
                    </td>
                <td class="auto-style88">
                    </td>
                <td class="auto-style100">
                    </td>
                <td class="auto-style93">
                    </td>
                <td>
                    </td>
                <td class="auto-style89"></td>
            </tr>
            <tr>
                <td class="auto-style101">
                    <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" />
                </td>
                <td class="auto-style101"></td>
                <td class="auto-style101"></td>
                <td class="auto-style101"></td>
                <td class="auto-style102"></td>
                <td class="auto-style94"></td>
                <td class="auto-style103">
                    <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" Text="Confirm" />
                </td>
                <td class="auto-style104">
                    <asp:Button ID="btnNext" runat="server" OnClick="btnNext_Click" Text="Next" Visible="False" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
