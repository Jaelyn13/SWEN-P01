﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NewReservation.aspx.cs" Inherits="SWEN.NewReservation" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style29 {
            width: 189px;
            height: 37px;
        }
        .auto-style31 {
            width: 189px;
            height: 24px;
        }
        .auto-style35 {
            width: 189px;
            height: 26px;
        }
        .auto-style38 {
            width: 189px;
            height: 25px;
        }
        .auto-style42 {
            width: 189px;
            height: 18px;
        }
        .auto-style50 {
            width: 189px;
            height: 17px;
        }
        .auto-style54 {
            width: 189px;
            height: 21px;
        }
        .auto-style57 {
            width: 189px;
            height: 19px;
        }
        .auto-style60 {
            width: 189px;
            height: 28px;
        }
        .auto-style63 {
            width: 189px;
            height: 29px;
        }
        .auto-style64 {
            width: 186px;
        }
        .auto-style65 {
            width: 93px;
        }
        .auto-style66 {
            width: 84px;
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
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td class="auto-style30" colspan="6" style="font-family: 'Arial Black'">New Reservation</td>
            </tr>
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style32" colspan="6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31"></td>
                <td colspan="3" class="auto-style34">Check-In:</td>
                <td class="auto-style32" colspan="3">Check-Out:</td>
            </tr>
            <tr>
                <td class="auto-style35"></td>
                <td colspan="3" class="auto-style36">
                    <asp:TextBox ID="tbxIn" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="tbxIn_CalendarExtender" runat="server" TargetControlID="tbxIn">
                    </asp:CalendarExtender>
                </td>
                <td class="auto-style37" colspan="3">
                    <asp:TextBox ID="tbxOut" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="tbxOut_CalendarExtender" runat="server" TargetControlID="tbxOut">
                    </asp:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td class="auto-style50"></td>
                <td class="auto-style49" colspan="6"></td>
            </tr>
            <tr>
                <td class="auto-style38"></td>
                <td class="auto-style65">No of Room(s)</td>
                <td class="auto-style27" colspan="4">Adult</td>
                <td class="auto-style28">Child</td>
            </tr>
            <tr>
                <td class="auto-style63"></td>
                <td class="auto-style64" colspan="2">
                    <asp:DropDownList ID="ddlRoom" runat="server" style="height: 22px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style66" colspan="2">
                    <asp:DropDownList ID="ddlAdult" runat="server" style="height: 22px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style64" colspan="2">
                    <asp:DropDownList ID="ddlChild" runat="server" style="height: 22px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style42"></td>
                <td class="auto-style43" colspan="2">
                    </td>
                <td class="auto-style66" colspan="2">
                    </td>
                <td class="auto-style43" colspan="2">
                    </td>
            </tr>
            <tr>
                <td class="auto-style31"></td>
                <td class="auto-style34" colspan="3">Room Type: </td>
                <td class="auto-style53" colspan="3">Night(s):</td>
            </tr>
            <tr>
                <td class="auto-style54"></td>
                <td class="auto-style55" colspan="3">
                    <asp:DropDownList ID="ddlRoomType" runat="server">
                        <asp:ListItem>Twin Room</asp:ListItem>
                        <asp:ListItem>Single Bedroom</asp:ListItem>
                        <asp:ListItem>Double Bedroom</asp:ListItem>
                        <asp:ListItem>Triple Bedroom</asp:ListItem>
                        <asp:ListItem>Twin for sole use</asp:ListItem>
                        <asp:ListItem>Quadruple Room</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style56" colspan="3">
                    <asp:DropDownList ID="ddlNight" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style57"></td>
                <td class="auto-style58" colspan="6"></td>
            </tr>
            <tr>
                <td class="auto-style42"></td>
                <td class="auto-style59" colspan="6"></td>
            </tr>
            <tr>
                <td class="auto-style54"></td>
                <td class="auto-style62" colspan="6">
                    <asp:Button ID="btnRates" runat="server" Text="Check Rates" OnClick="btnRates_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style60"></td>
                <td class="auto-style61" colspan="6"></td>
            </tr>
        </table>
    </div>
</asp:Content>
