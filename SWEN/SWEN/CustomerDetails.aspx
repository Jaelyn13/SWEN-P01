<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="SWEN.CustomerDetails" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style20 {
        }
    .auto-style21 {
        width: 204px;
        height: 23px;
    }
    .auto-style22 {
        height: 23px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <table style="width:100%;">
            <tr>
                <td colspan="2">Customer Details:</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">First Name:</td>
                <td>
                    <asp:TextBox ID="tbxFirst" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Last Name:</td>
                <td>
                    <asp:TextBox ID="tbxLast" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Passport No:</td>
                <td>
                    <asp:TextBox ID="tbxPassportNo" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Gender:</td>
                <td>
                    <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Date of Birth:</td>
                <td>
                    <asp:TextBox ID="tbxDOB" runat="server"></asp:TextBox>
                    <cc1:CalendarExtender ID="tbxDOB_CalendarExtender" runat="server" TargetControlID="tbxDOB">
                    </cc1:CalendarExtender>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21">Nationality:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="tbxNationality" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style22"></td>
                <td class="auto-style22"></td>
            </tr>
            <tr>
                <td class="auto-style20">Contact Number:</td>
                <td>
                    <asp:TextBox ID="tbxContact" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Mailing Address:</td>
                <td>
                    <asp:TextBox ID="tbxMailing" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Country:</td>
                <td>
                    <asp:TextBox ID="tbxCountry" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Email Address:</td>
                <td>
                    <asp:TextBox ID="tbxEmail" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Credit Card Type:</td>
                <td>
                    <asp:DropDownList ID="ddlType" runat="server">
                        <asp:ListItem>VISA</asp:ListItem>
                        <asp:ListItem>Master Card</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Credit Card Number:</td>
                <td>
                    <asp:TextBox ID="tbxCardNo" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Credit Card CVC Number:</td>
                <td>
                    <asp:TextBox ID="tbxCVC" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Credit Card Expired date:</td>
                <td>
                    <asp:TextBox ID="tbxExpired" runat="server"></asp:TextBox>
                    <cc1:CalendarExtender ID="tbxExpired_CalendarExtender" runat="server" TargetControlID="tbxExpired" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">Remarks: (100 Words)</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20" colspan="2" rowspan="2">
                    <asp:TextBox ID="tbxRemarks" runat="server" Height="77px" Width="369px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblStatus" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
