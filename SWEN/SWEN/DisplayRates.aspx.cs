using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SWEN
{
    public partial class DisplayRates : System.Web.UI.Page
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

            lblDatein.Text = checkin;
            lblDateOut.Text = checkout;
            lblNight.Text = nights;
            lblRoom.Text = noofroom;
            lblRoomType.Text = roomtype;
            lblAdult.Text = adult;
            lblChild.Text = child;

            if (roomtype.Equals("Twin Room"))
            {
                lblRates.Text = "248.00";
            }
            else if (roomtype.Equals("Single Bedroom"))
            {
                lblRates.Text = "165.00";
            }
            else if (roomtype.Equals("Double Bedroom"))
            {
                lblRates.Text = "248.00";
            }
            else if (roomtype.Equals("Triple Bedroom"))
            {
                lblRates.Text = "321.00";
            }
            else if (roomtype.Equals("Twin for sole use"))
            {
                lblRates.Text = "196.00";
            }
            else if (roomtype.Equals("Quadruple Room"))
            {
                lblRates.Text = "408.00";
            }

            lblAmount.Text = Convert.ToString(Convert.ToInt32(noofroom) * Convert.ToDouble(lblRates.Text) * Convert.ToInt32(nights));

            
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            btnConfirm.Enabled = false;
            btnNext.Visible = true;
            btnNext.Enabled = true;
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            string checkin = Request.QueryString["checkin"];
            string checkout = Request.QueryString["checkout"];
            string nights = Request.QueryString["nights"];
            string roomtype = Request.QueryString["roomtype"];
            string noofroom = Request.QueryString["noofroom"];
            string adult = Request.QueryString["adult"];
            string child = Request.QueryString["child"];
            string totalamount = lblAmount.Text;

            string querystring = "checkin=" + checkin;
            querystring += "&" + "checkout=" + checkout;
            querystring += "&" + "noofroom=" + noofroom;
            querystring += "&" + "adult=" + adult;
            querystring += "&" + "child=" + child;
            querystring += "&" + "roomtype=" + roomtype;
            querystring += "&" + "nights=" + nights;
            querystring += "&" + "totalamount=" + totalamount;

            Server.Transfer("CustomerDetails.aspx?" + querystring);
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewReservation.aspx");
        }

    }
}