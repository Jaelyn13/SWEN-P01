using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SWEN.Classes;
using System.Collections;

namespace SWEN
{
    public partial class DisplayReservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            int bookingid = Convert.ToInt32(Request.QueryString["bookingid"]);
            if (!Page.IsPostBack)
            {
                Booking b = DRHMSdbManager.GetBookingId(bookingid);

                lblDatein.Text = b.Checkindate;
                lblDateOut.Text = b.Checkoutdate;
                lblRoom.Text = b.Noofroom;
                lblRoomType.Text = b.Roomtype;
                lblNight.Text = b.Noofdays;
                lblAdult.Text = b.Noofadults;
                lblChild.Text = b.Noofchildren;

            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string checkin = lblDatein.Text;
            string checkout = lblDateOut.Text;
            string noofroom = lblRoom.Text;
            string adult = lblAdult.Text;
            string child = lblChild.Text;
            string roomtype = lblRoomType.Text;
            string nights = lblNight.Text;
            string bookingid = Request.QueryString["bookingid"];

            string querystring = "checkin=" + checkin;
            querystring += "&" + "checkout=" + checkout;
            querystring += "&" + "noofroom=" + noofroom;
            querystring += "&" + "adult=" + adult;
            querystring += "&" + "child=" + child;
            querystring += "&" + "roomtype=" + roomtype;
            querystring += "&" + "nights=" + nights;
            querystring += "&" + "bookingid=" + bookingid;

            Server.Transfer("UpdateReservation.aspx?" + querystring);
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            DRHMSdbManager.DeleteBooking(Convert.ToInt32(Request.QueryString["bookingid"]));
            Response.Redirect("DeleteReservation.aspx");
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reservation.aspx");
        }


    }
}