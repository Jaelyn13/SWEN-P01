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
    public partial class ViewModifyReservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnNext_Click(object sender, EventArgs e)
        {

            string bookingid = tbxNumber.Text;

            string querystring = "bookingid=" + bookingid;
            Server.Transfer("DisplayReservation.aspx?" + querystring);
        }

   
    }
}