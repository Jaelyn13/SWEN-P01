using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SWEN
{
    public partial class DisplayCheckIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCheckIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerDetails.aspx?");
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