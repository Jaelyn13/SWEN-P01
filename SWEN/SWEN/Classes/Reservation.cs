using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SWEN.Classes
{
    public class Reservation
    {
        private int bookingid;

        public Reservation()
        {

        }
        public Reservation(int bookingid)
        {
            this.bookingid = bookingid;
        }

        public int Bookingid
        {
            get { return bookingid; }
            set { bookingid = value; }
        }
    }
}