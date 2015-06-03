using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using SWEN.Classes;

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
            string firstname = Request.QueryString["firstname"];
            string lastname = Request.QueryString["lastname"];
            string creditcardno = Request.QueryString["creditcardno"];

            lblDatein.Text = checkin;
            lblDateOut.Text = checkout;
            lblName.Text = firstname + " " + lastname;
            lblRoom.Text = noofroom;
            lblRoomType.Text = roomtype;
            lblNight.Text = nights;
            lblAdult.Text = adult;
            lblChild.Text = child;

            ArrayList reservationNo = DRHMSdbManager.GetReservationNo(creditcardno);
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reservation.aspx");
        }
    }
}