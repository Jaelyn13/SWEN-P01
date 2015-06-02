using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SWEN
{
    public partial class New_Check_In : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCheckIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("DisplayRates.aspx?");
        }

        
    }
}