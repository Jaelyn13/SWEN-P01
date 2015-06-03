using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SWEN.Classes
{
    public class Booking
    {
        private int bookingid;
        private string roomtype;
        private string noofdays;
        private string noofroom;
        private string noofadults;
        private string noofchildren;
        private string checkindate;
        private string checkoutdate;
        private string totalamount;
        private string creditcardtype;
        private string creditcardno;
        private string cvc;
        private string cardexpirydate;
        private string remarks;

        public Booking()
        { 

        }

        public Booking(string roomtype, string noofdays, string noofroom, string noofadults, string noofchildren, string checkindate, string checkoutdate, string totalamount, string creditcardtype, string creditcardno, string cvc, string cardexpirydate, string remarks)
        {
            this.roomtype = roomtype;
            this.noofdays = noofdays;
            this.noofroom = noofroom;
            this.noofadults = noofadults;
            this.noofchildren = noofchildren;
            this.checkindate = checkindate;
            this.checkoutdate = checkoutdate;
            this.totalamount = totalamount;
            this.creditcardtype = creditcardtype;
            this.creditcardno = creditcardno;
            this.cvc = cvc;
            this.cardexpirydate = cardexpirydate;
            this.remarks = remarks;
        }

        public int Bookingid
        {
            get { return bookingid; }
            set { bookingid = value; }
        }


        public string Roomtype
        {
            get { return roomtype; }
            set { roomtype = value; }
        }

        public string Noofdays
        {
            get { return noofdays; }
            set { noofdays = value; }
        }

        public string Noofroom
        {
            get { return noofroom; }
            set { noofroom = value; }
        }

        public string Noofadults
        {
            get { return noofadults; }
            set { noofadults = value; }
        }
        public string Noofchildren
        {
            get { return noofchildren; }
            set { noofchildren = value; }
        }

        public string Checkindate
        {
            get { return checkindate; }
            set { checkindate = value; }
        }

        public string Checkoutdate
        {
            get { return checkoutdate; }
            set { checkoutdate = value; }
        }

        public string Totalamount
        {
            get { return totalamount; }
            set { totalamount = value; }
        }

        public string Creditcardtype
        {
            get { return creditcardtype; }
            set { creditcardtype = value; }
        }

        public string Creditcardno
        {
            get { return creditcardno; }
            set { creditcardno = value; }
        }
        public string Cvc
        {
            get { return cvc; }
            set { cvc = value; }
        }

        public string Cardexpirydate
        {
            get { return cardexpirydate; }
            set { cardexpirydate = value; }
        }

        public string Remarks
        {
            get { return remarks; }
            set { remarks = value; }
        }

        
    }
}