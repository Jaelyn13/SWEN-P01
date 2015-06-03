using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;

namespace SWEN.Classes
{
    public class DRHMSdbManager
    {
        public static int CreateBooking(Booking b)
        {
            int rowsinserted = 0;

            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DRHMSdbConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "INSERT INTO Booking(roomtype,noofdays,noofroom,noofadults,noofchildren,checkindate,checkoutdate,totalamount,creditcardtype,creditcardno,cvc,cardexpirydate,remarks)" +
                    " VALUES (@roomtype,@noofdays,@noofroom,@noofadults,@noofchildren,@checkindate,@checkoutdate,@totalamount,@creditcardtype,@creditcardno,@cvc,@cardexpirydate,@remarks)";
                comm.Parameters.AddWithValue("@roomtype", b.Roomtype);
                comm.Parameters.AddWithValue("@noofdays", b.Noofdays);
                comm.Parameters.AddWithValue("@noofroom", b.Noofroom);
                comm.Parameters.AddWithValue("@noofadults", b.Noofadults);
                comm.Parameters.AddWithValue("@noofchildren", b.Noofchildren);
                comm.Parameters.AddWithValue("@checkindate", b.Checkindate);
                comm.Parameters.AddWithValue("@checkoutdate", b.Checkoutdate);
                comm.Parameters.AddWithValue("@totalamount", b.Totalamount);
                comm.Parameters.AddWithValue("@creditcardtype", b.Creditcardtype);
                comm.Parameters.AddWithValue("@creditcardno", b.Creditcardno);
                comm.Parameters.AddWithValue("@cvc", b.Cvc);
                comm.Parameters.AddWithValue("@cardexpirydate", b.Cardexpirydate);
                comm.Parameters.AddWithValue("@remarks", b.Remarks);
                rowsinserted = comm.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowsinserted;
        }

        public static int CreateCustomer(Customer c)
        {
            int rowsinserted = 0;

            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DRHMSdbConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "INSERT INTO Customer(firstname, lastname, gender, nationality, passportno, contactno, email, dob, address, country)" +
                     " VALUES (@firstname,@lastname,@gender,@nationality,@passportno,@contactno,@email,@dob,@address,@country)";
                comm.Parameters.AddWithValue("@firstname", c.Firstname);
                comm.Parameters.AddWithValue("@lastname", c.Lastname);
                comm.Parameters.AddWithValue("@gender", c.Gender);
                comm.Parameters.AddWithValue("@nationality", c.Nationality);
                comm.Parameters.AddWithValue("@passportno", c.Passportno);
                comm.Parameters.AddWithValue("@contactno", c.Contactno);
                comm.Parameters.AddWithValue("@email", c.Email);
                comm.Parameters.AddWithValue("@dob", c.Dob);
                comm.Parameters.AddWithValue("@address", c.Address);
                comm.Parameters.AddWithValue("@country", c.Country);
                rowsinserted = comm.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowsinserted;
        }

        public static ArrayList GetReservationNo(string creditcardno)
        {
            ArrayList result = new ArrayList();
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DRHMSdbConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "SELECT bookingid FROM Booking WHERE creditcardno=@creditcardno";
                comm.Parameters.AddWithValue("@creditcardno", creditcardno);
                SqlDataReader dr = comm.ExecuteReader();
                while (dr.Read())
                {
                    Booking b = new Booking();
                    b.Bookingid = (int)dr["Bookingid"];
                    result.Add(b);
                }

                dr.Close();

            }
            catch (SqlException e)
            {
                throw e;
            }

            return result;

        }

        public static Booking GetBookingId(int bookingid)
        {
            Booking b = new Booking();
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DRHMSdbConnectionString"].ConnectionString;
                conn.Open();

                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "SELECT * FROM booking WHERE bookingid=@bookingid";
                comm.Parameters.AddWithValue("@bookingid", bookingid);

                SqlDataReader dr = comm.ExecuteReader();
                if (dr.Read())
                {
                    b.Cardexpirydate = (string)dr["cardexpirydate"];
                    b.Checkindate = (string)dr["checkindate"];
                    b.Checkoutdate = (string)dr["checkoutdate"];
                    b.Creditcardno = (string)dr["creditcardno"];
                    b.Creditcardtype = (string)dr["creditcardtype"];
                    b.Cvc = (string)dr["cvc"];
                    b.Noofadults = (string)dr["noofadults"];
                    b.Noofchildren = (string)dr["noofchildren"];
                    b.Noofdays = (string)dr["noofdays"];
                    b.Noofroom = (string)dr["noofroom"];
                    b.Remarks = (string)dr["remaerks"];
                    b.Roomtype = (string)dr["roomtype"];
                }
                    
            }
         
            catch (SqlException e)
            {
                throw e;
            }
            return b;
        }


        

    }
}