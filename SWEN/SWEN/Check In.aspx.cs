using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SWEN
{
    public partial class Check_In : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCheckin_Click(object sender, EventArgs e)
        {
            Response.Redirect("New Check In.aspx?");
        }

        protected void btnEnterReservation_Click(object sender, EventArgs e)
        {
            Response.Redirect("New Check In 2.aspx?");
        }

       
   
        
    }
}