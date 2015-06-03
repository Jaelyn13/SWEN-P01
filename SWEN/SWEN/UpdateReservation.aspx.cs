using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SWEN.Classes;

namespace SWEN
{
    public partial class UpdateReservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string checkin = Request.QueryString["checkin"];
            string checkout = Request.QueryString["checkout"];
            string nights = Request.QueryString["nights"];
            string roomtype = Request.QueryString["roomtype"];
            string noofroom = Request.QueryString["noofroom"];
            string adult = Request.QueryString["adult"];
            string child = Request.QueryString["child"];

            tbxIn.Text = checkin;
            tbxOut.Text = checkout;
            ddlNight.SelectedValue = nights;
            ddlRoomType.SelectedValue = roomtype;
            ddlRoom.SelectedValue = noofroom;
            ddlAdult.SelectedValue = adult;
            ddlChild.SelectedValue = child;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            
            Booking editBooking = new Booking();
            editBooking.Bookingid = Convert.ToInt32(Request.QueryString["bookingid"]);
            editBooking.Checkindate = tbxIn.Text;
            editBooking.Checkoutdate = tbxOut.Text;
            editBooking.Noofroom = ddlRoom.SelectedValue;
            editBooking.Noofadults = ddlAdult.SelectedValue;
            editBooking.Noofchildren = ddlChild.SelectedValue;
            editBooking.Noofdays = ddlNight.SelectedValue;
            editBooking.Roomtype = ddlRoomType.SelectedValue;

            if (DRHMSdbManager.UpdateBooking(editBooking) == 1)
            {
                string checkin = tbxIn.Text;
                string checkout = tbxOut.Text;
                string noofroom = ddlRoom.SelectedValue;
                string adult = ddlAdult.SelectedValue;
                string child = ddlChild.SelectedValue;
                string roomtype = ddlRoomType.SelectedValue;
                string nights = ddlNight.SelectedValue;
                string bookingid = Request.QueryString["bookingid"];

                string querystring = "checkin=" + checkin;
                querystring += "&" + "checkout=" + checkout;
                querystring += "&" + "noofroom=" + noofroom;
                querystring += "&" + "adult=" + adult;
                querystring += "&" + "child=" + child;
                querystring += "&" + "roomtype=" + roomtype;
                querystring += "&" + "nights=" + nights;
                querystring += "&" + "bookingid=" + bookingid;

                Server.Transfer("EndReservation.aspx?" + querystring);
            }

            
        }
    }
}