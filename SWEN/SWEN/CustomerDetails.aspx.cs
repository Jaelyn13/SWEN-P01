using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SWEN
{
    public partial class CustomerDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string checkin = Request.QueryString["checkin"];
            string checkout = Request.QueryString["checkout"];
            string nights = Request.QueryString["nights"];
            string roomtype = Request.QueryString["roomtype"];
            string noofroom = Request.QueryString["noofroom"];
            string adult = Request.QueryString["adult"];
            string child = Request.QueryString["child"];
            string totalamount = Request.QueryString["totalamount"];

            string passportno = tbxPassportNo.Text;
            string firstname = tbxFirst.Text;
            string lastname = tbxLast.Text;
            string gender = rblGender.SelectedValue;
            string dob = tbxDOB.Text;
            string contactno = tbxContact.Text;

            Response.Redirect("EndReservation.aspx?");
        }
    }
}