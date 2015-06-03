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
            string nationality = tbxNationality.Text;
            string contactno = tbxContact.Text;
            string address = tbxMailing.Text;
            string country = tbxCountry.Text;
            string email = tbxEmail.Text;
            string creditcardtype = ddlType.SelectedValue;
            string creditcardno = tbxCardNo.Text;
            string cvc = tbxCVC.Text;
            string cardexpirydate = tbxExpired.Text;
            string remarks = tbxRemarks.Text;

            string querystring = "checkin=" + checkin;
            querystring += "&" + "checkout=" + checkout;
            querystring += "&" + "noofroom=" + noofroom;
            querystring += "&" + "adult=" + adult;
            querystring += "&" + "child=" + child;
            querystring += "&" + "roomtype=" + roomtype;
            querystring += "&" + "nights=" + nights;
            querystring += "&" + "totalamount=" + totalamount;
            querystring += "&" + "passportno=" + passportno;
            querystring += "&" + "firstname=" + firstname;
            querystring += "&" + "lastname=" + lastname;
            querystring += "&" + "gender=" + gender;
            querystring += "&" + "dob=" + dob;
            querystring += "&" + "nationality=" + nationality;
            querystring += "&" + "contactno=" + contactno;
            querystring += "&" + "address=" + address;
            querystring += "&" + "country=" + country;
            querystring += "&" + "email=" + email;
            querystring += "&" + "creditcardtype=" + creditcardtype;
            querystring += "&" + "creditcardno=" + creditcardno;
            querystring += "&" + "cvc=" + cvc;
            querystring += "&" + "cardexpirydate=" + cardexpirydate;
            querystring += "&" + "remarks=" + remarks;

            Booking b = new Booking(roomtype, nights, noofroom, adult, child, checkin, checkout, totalamount, creditcardtype, creditcardno, cvc, cardexpirydate, remarks);
            Customer c = new Customer(firstname, lastname, gender, nationality, passportno, contactno, email, dob, address, country);

            if (DRHMSdbManager.CreateBooking(b) == 1 && DRHMSdbManager.CreateCustomer(c) == 1)
            {
                Server.Transfer("EndReservation.aspx?" + querystring);
            }
                        
        }
    }
}