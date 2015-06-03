<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateReservation.aspx.cs" Inherits="SWEN.UpdateReservation" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style20 {
            width: 151px;
            height: 26px;
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
        .auto-style28 {
            width: 276px;
            height: 25px;
        }
        .auto-style29 {
            width: 151px;
            height: 35px;
        }
        .auto-style30 {
            width: 340px;
            height: 35px;
        }
        .auto-style49 {
            width: 163px;
            height: 26px;
        }
        .auto-style60 {
            width: 100%;
            height: 391px;
        }
        .auto-style65 {
            width: 151px;
            height: 25px;
        }
        .auto-style66 {
            width: 340px;
            height: 25px;
        }
        .auto-style67 {
            height: 25px;
            width: 116px;
        }
        .auto-style68 {
            width: 163px;
            height: 25px;
        }
        .auto-style69 {
            width: 190px;
            height: 25px;
        }
        .auto-style71 {
            height: 25px;
            width: 268435328px;
        }
        .auto-style72 {
            width: 69px;
            height: 25px;
        }
        .auto-style73 {
            width: 204px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <table class="auto-style60">
            <tr>
                <td class="auto-style29">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td class="auto-style30" colspan="6" style="font-family: 'Arial Black'">Update Reservation</td>
            </tr>
            <tr>
                <td class="auto-style65"></td>
                <td class="auto-style66" colspan="6"></td>
            </tr>
            <tr>
                <td class="auto-style65">&nbsp;</td>
                <td class="auto-style66" colspan="6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style65"></td>
                <td colspan="3" class="auto-style69">Check-In:</td>
                <td class="auto-style68" colspan="3">Check-Out:</td>
            </tr>
            <tr>
                <td class="auto-style65"></td>
                <td colspan="3" class="auto-style69">
                    <asp:TextBox ID="tbxIn" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="tbxIn_CalendarExtender" runat="server" TargetControlID="tbxIn">
                    </asp:CalendarExtender>
                </td>
                <td class="auto-style68" colspan="3">
                    <asp:TextBox ID="tbxOut" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="tbxOut_CalendarExtender" runat="server" TargetControlID="tbxOut">
                    </asp:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td class="auto-style65"></td>
                <td class="auto-style69" colspan="6"></td>
            </tr>
            <tr>
                <td class="auto-style65">&nbsp;</td>
                <td class="auto-style67">No of Room(s)</td>
                <td class="auto-style72" colspan="4">Adult</td>
                <td class="auto-style28">Child</td>
            </tr>
            <tr>
                <td class="auto-style65"></td>
                <td class="auto-style73" colspan="2">
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
                <td class="auto-style71" colspan="2">
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
                <td class="auto-style68" colspan="2">
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
                <td class="auto-style65"></td>
                <td class="auto-style73" colspan="2">
                    </td>
                <td class="auto-style71" colspan="2">
                    </td>
                <td class="auto-style68" colspan="2">
                    </td>
            </tr>
            <tr>
                <td class="auto-style65"></td>
                <td class="auto-style69" colspan="3">Room Type: </td>
                <td class="auto-style69" colspan="3">Night(s):</td>
            </tr>
            <tr>
                <td class="auto-style65"></td>
                <td class="auto-style69" colspan="3">
                    <asp:DropDownList ID="ddlRoomType" runat="server">
                        <asp:ListItem>Twin Room</asp:ListItem>
                        <asp:ListItem>Single Bedroom</asp:ListItem>
                        <asp:ListItem>Double Bedroom</asp:ListItem>
                        <asp:ListItem>Triple Bedroom</asp:ListItem>
                        <asp:ListItem>Twin for sole use</asp:ListItem>
                        <asp:ListItem>Quadruple Room</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style69" colspan="3">
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
                <td class="auto-style65"></td>
                <td class="auto-style69" colspan="6"></td>
            </tr>
            <tr>
                <td class="auto-style65"></td>
                <td class="auto-style69" colspan="6"></td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style49" colspan="6">
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style49" colspan="6"></td>
            </tr>
        </table>
    </div>
</asp:Content>