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
            Response.Redirect("DisplayRates.aspx?");
            

        }
    }
}