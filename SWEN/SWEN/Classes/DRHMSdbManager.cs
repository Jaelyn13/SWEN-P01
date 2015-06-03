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
                comm.CommandText = "SELECT * FROM Booking WHERE bookingid=@bookingid";
                comm.Parameters.AddWithValue("@bookingid", bookingid);

                SqlDataReader dr = comm.ExecuteReader();
                if (dr.Read())
                {
                    b.Checkindate = (string)dr["Checkindate"];
                    b.Checkoutdate = (string)dr["Checkoutdate"];
                    b.Noofadults = Convert.ToString((int)dr["Noofadults"]);
                    b.Noofchildren = Convert.ToString((int)dr["Noofchildren"]);
                    b.Noofdays = Convert.ToString((int)dr["Noofdays"]);
                    b.Noofroom = Convert.ToString((int)dr["Noofroom"]);
                    b.Roomtype = (string)dr["Roomtype"];
                }
                    
            }
         
            catch (SqlException e)
            {
                throw e;
            }
            return b;
        }

        public static int UpdateBooking(Booking b)
        {
            int rowsupdated = 0;

            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DRHMSdbConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "UPDATE Booking SET checkindate=@checkindate,checkoutdate=@checkoutdate,noofroom=@noofroom,noofadults=@noofadults,noofchildren=@noofchildren,noofdays=@noofdays,roomtype=@roomtype where bookingid=@bookingid";
                comm.Parameters.AddWithValue("@checkindate", b.Checkindate);
                comm.Parameters.AddWithValue("@checkoutdate", b.Checkoutdate);
                comm.Parameters.AddWithValue("@noofroom", b.Noofroom);
                comm.Parameters.AddWithValue("@noofadults", b.Noofadults);
                comm.Parameters.AddWithValue("@noofchildren", b.Noofchildren);
                comm.Parameters.AddWithValue("@noofdays", b.Noofdays);
                comm.Parameters.AddWithValue("@roomtype", b.Roomtype);
                comm.Parameters.AddWithValue("@bookingid", b.Bookingid);
                rowsupdated = comm.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowsupdated;
        }

        public static int DeleteBooking(int bookingid)
        {
            int rowsdeleted = 0;

            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["DRHMSdbConnectionString"].ConnectionString;
                conn.Open();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = "DELETE Booking where bookingid=@bookingid";
                comm.Parameters.AddWithValue("@bookingid", bookingid);
                rowsdeleted = comm.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                throw e;
            }
            return rowsdeleted;
        }
        

    }
}