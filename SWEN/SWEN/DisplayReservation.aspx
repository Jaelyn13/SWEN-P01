<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DisplayReservation.aspx.cs" Inherits="SWEN.DisplayReservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style20 {
        }
        .auto-style21 {
            width: 118px;
        }
        .auto-style25 {
            width: 141px;
            height: 21px;
        }
        .auto-style26 {
            height: 21px;
        }
        .auto-style27 {
            width: 141px;
            height: 35px;
        }
        .auto-style28 {
            height: 35px;
        }
        .auto-style29 {
            width: 141px;
            height: 18px;
        }
        .auto-style30 {
            height: 18px;
        }
        .auto-style31 {
            width: 141px;
            height: 45px;
        }
        .auto-style32 {
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style20" colspan="2">View/Update/Delete</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">Check In:</td>
                <td class="auto-style26">Check Out</td>
                <td class="auto-style26">Night</td>
                <td class="auto-style26">Room Type</td>
                <td class="auto-style26">Room</td>
                <td class="auto-style26">Adult:</td>
                <td class="auto-style26">Child:</td>
                <td class="auto-style26"></td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Label ID="lblDatein" runat="server"></asp:Label>
                </td>
                <td class="auto-style28">
                    <asp:Label ID="lblDateOut" runat="server"></asp:Label>
                </td>
                <td class="auto-style28">
                    <asp:Label ID="lblNight" runat="server"></asp:Label>
                </td>
                <td class="auto-style28">
                    <asp:Label ID="lblRoomType" runat="server"></asp:Label>
                </td>
                <td class="auto-style28">
                    <asp:Label ID="lblRoom" runat="server"></asp:Label>
                </td>
                <td class="auto-style28">
                    <asp:Label ID="lblAdult" runat="server"></asp:Label>
                </td>
                <td class="auto-style28">
                    <asp:Label ID="lblChild" runat="server"></asp:Label>
                </td>
                <td class="auto-style28"></td>
            </tr>
            <tr>
                <td class="auto-style29">
                    </td>
                <td class="auto-style30">
                    </td>
                <td class="auto-style30">
                    </td>
                <td class="auto-style30">
                    </td>
                <td class="auto-style30">
                    </td>
                <td class="auto-style30">
                    </td>
                <td class="auto-style30">
                    </td>
                <td class="auto-style30"></td>
            </tr>
            <tr>
                <td class="auto-style31"></td>
                <td class="auto-style32"></td>
                <td class="auto-style32"></td>
                <td class="auto-style32"></td>
                <td class="auto-style32"></td>
                <td class="auto-style32">
                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                </td>
                <td class="auto-style32">
                    <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                </td>
                <td class="auto-style32">
                    <asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="Home" Visible="False" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
