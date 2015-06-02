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

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            btnConfirm.Enabled = false;
            btnNext.Visible = true;
            btnNext.Enabled = true;
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerDetails.aspx?");
        }
    }
}