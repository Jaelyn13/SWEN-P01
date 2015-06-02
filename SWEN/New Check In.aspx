<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="New Check In.aspx.cs" Inherits="SWEN.New_Check_In" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style20 {
            width: 142px;
        }
        .auto-style21 {
            width: 340px;
        }
        .auto-style23 {
            width: 142px;
            height: 23px;
        }
        .auto-style24 {
            width: 340px;
            height: 23px;
        }
        .auto-style27 {
            width: 450px;
        }
        .auto-style28 {
            width: 276px;
        }
        .auto-style29 {
            width: 142px;
            height: 37px;
        }
        .auto-style30 {
            width: 340px;
            height: 37px;
        }
        .auto-style31 {
            width: 142px;
            height: 24px;
        }
        .auto-style32 {
            width: 340px;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style29">
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </asp:ToolkitScriptManager>
                </td>
                <td class="auto-style30" colspan="6" style="font-family: 'Arial Black'">New Check In</td>
            </tr>
            <tr>
                <td class="auto-style31"></td>
                <td class="auto-style32" colspan="6"></td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td colspan="3">Check-In:</td>
                <td class="auto-style21" colspan="3">Check-Out:</td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td colspan="3">
                    <asp:TextBox ID="tbxIn" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="tbxIn_CalendarExtender" runat="server" TargetControlID="tbxIn">
                    </asp:CalendarExtender>
                </td>
                <td class="auto-style21" colspan="3">
                    <asp:TextBox ID="tbxOut" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="tbxOut_CalendarExtender" runat="server" TargetControlID="tbxOut">
                    </asp:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"></td>
                <td class="auto-style24" colspan="6"></td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td>Room</td>
                <td class="auto-style27" colspan="4">Adult</td>
                <td class="auto-style28">Child</td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style21" colspan="2">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style21" colspan="2">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style21" colspan="2">
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"></td>
                <td class="auto-style24" colspan="6"></td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style21" colspan="6">
                    <asp:Button ID="tbxCheckIn" runat="server" Text="CheckIn" />
                </td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style21" colspan="6">&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

