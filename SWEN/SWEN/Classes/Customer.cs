using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SWEN.Classes
{
    public class Customer
    {
        private int customerid;
        private string firstname;
        private string lastname;
        private string gender;
        private string nationality;
        private string passportno;
        private string contactno;
        private string email;
        private string dob;
        private string address;
        private string country;

        public Customer()
        { 

        }

        public Customer(string firstname, string lastname, string gender, string nationality, string passportno, string contactno, string email, string dob, string address, string country)
        {
            this.firstname = firstname;
            this.lastname = lastname;
            this.gender = gender;
            this.nationality = nationality;
            this.passportno = passportno;
            this.contactno = contactno;
            this.email = email;
            this.dob = dob;
            this.address = address;
            this.country = country;
        }

        public int Customerid
        {
            get { return customerid; }
            set { customerid = value; }
        }

        public string Firstname
        {
            get { return firstname; }
            set { firstname = value; }
        }

        public string Lastname
        {
            get { return lastname; }
            set { lastname = value; }
        }
        public string Gender
        {
            get { return gender; }
            set { gender = value; }
        }

        public string Nationality
        {
            get { return nationality; }
            set { nationality = value; }
        }

        public string Passportno
        {
            get { return passportno; }
            set { passportno = value; }
        }

        public string Contactno
        {
            get { return contactno; }
            set { contactno = value; }
        }

        public string Email
        {
            get { return email; }
            set { email = value; }
        }

        public string Dob
        {
            get { return dob; }
            set { dob = value; }
        }
        public string Address
        {
            get { return address; }
            set { address = value; }
        }

        public string Country
        {
            get { return country; }
            set { country = value; }
        }
    }
}