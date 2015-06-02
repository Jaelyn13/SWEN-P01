using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SWEN
{
    public partial class Reservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

    
        protected void btnNew_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewReservation.aspx?");
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewModifyReservation.aspx?");
        }
    }
}