using Client.ViewModels;
using System.Collections.ObjectModel;

namespace Client
{
    public class SecuritieViewModel : BaseViewModel
    {
        private Security _security;

        public SecuritieViewModel(Security security)
        {
            _security = security;

            Reservations = new ObservableCollection<ReservationViewModel>();
            foreach (var reservation in _security.Reservations)
            {
                Reservations.Add(new ReservationViewModel(reservation));
            }
        }

        public string Isin { get { return _security.Isin; } }

        public string Name { get { return _security.Name; } }

        public decimal Price { get { return _security.Price; } }

        public ObservableCollection<ReservationViewModel> Reservations { get; private set; }
    }
}
