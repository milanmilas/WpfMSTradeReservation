using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Client
{
    public class Security
    {
        public string Isin { get; set; }

        public string Name { get; set; }

        public decimal Price { get; set; }

        public List<Reservation> Reservations { get; set; }

        public Security()
        {
            Reservations = new List<Reservation>();
        }
    }
}
