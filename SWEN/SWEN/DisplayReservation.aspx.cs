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
            Response.Redirect("UpdateReservation.aspx?");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteReservation.aspx?");
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reservation.aspx?");
        }


    }
}