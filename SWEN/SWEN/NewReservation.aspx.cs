using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SWEN
{
    public partial class NewReservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void btnRates_Click(object sender, EventArgs e)
        {
            string checkin = tbxIn.Text;
            string checkout = tbxOut.Text;
            string noofroom = ddlRoom.SelectedValue;
            string adult = ddlAdult.SelectedValue;
            string child = ddlChild.SelectedValue;
            string roomtype = ddlRoomType.SelectedValue;
            string nights = ddlNight.SelectedValue;

            string querystring = "checkin=" + checkin;
            querystring += "&" + "checkout=" + checkout;
            querystring += "&" + "noofroom=" + noofroom;
            querystring += "&" + "adult=" + adult;
            querystring += "&" + "child=" + child;
            querystring += "&" + "roomtype=" + roomtype;
            querystring += "&" + "nights=" + nights;

            Server.Transfer("DisplayRates.aspx?" + querystring);
            
        }
    }
}