using Client.ViewModels;
using System;

namespace Client
{
    public class ReservationViewModel : BaseViewModel
    {
        private Reservation _reservation;

        public string TraderName { get { return _reservation.TraderName; } private set { _reservation.TraderName = value; OnPoropertyChanged(); } }

        public decimal Quantity { get { return _reservation.Quantity; } private set { _reservation.Quantity = value; OnPoropertyChanged(); } }

        public DateTime Time { get { return _reservation.Time; } private set { _reservation.Time = value; OnPoropertyChanged(); } }

        public ReservationViewModel(Reservation reservation)
        {
            _reservation = reservation;
        }
    }
}
