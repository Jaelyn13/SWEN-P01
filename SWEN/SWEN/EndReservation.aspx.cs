using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace SWEN
{
    public partial class End_Reservation : System.Web.UI.Page
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
            string creditcardno = Request.QueryString["creditcardno"];
            string bookingid = Request.QueryString["bookingid"];

            lblNumber.Text = bookingid;
            lblDatein.Text = checkin;
            lblDateOut.Text = checkout;
            lblRoom.Text = noofroom;
            lblRoomType.Text = roomtype;
            lblNight.Text = nights;
            lblAdult.Text = adult;
            lblChild.Text = child;


        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reservation.aspx");
        }
    }
}