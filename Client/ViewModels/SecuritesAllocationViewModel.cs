using Client.Commands;
using Client.ViewModels;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Client
{
    public class SecuritiesAllocationViewModel : BaseViewModel
    {
        public ObservableCollection<SecuritieViewModel> Securities { get; private set; }

        public ICommand TestCommand { get; set; }

        private string _testProperty;
        private SynchronizationContext _uiContext;

        public string TestProperty {
            get { return _testProperty; }
            private set { _testProperty = value; OnPoropertyChanged(); }
        }

        public SecuritiesAllocationViewModel()
        {
            _uiContext = SynchronizationContext.Current;

            TestProperty = "SecuritesAllocationViewModel";

            Securities = new ObservableCollection<SecuritieViewModel>();
            Securities.Add(new SecuritieViewModel(new Security { Isin = "apl2015", Name = "Apple", Price = 10 }));
            Securities.Add(new SecuritieViewModel(
                new Security
                {
                    Isin = "goog2017",
                    Name = "Google",
                    Price = 20,
                    Reservations = new List<Reservation> { new Reservation { TraderName = "Linda", Quantity = 15, Time = DateTime.Now } }
                }));

            TestCommand = new RelayCommand(TestAction);
        }

        private void TestAction(object parameter)
        {
            var sercurity = (SecuritieViewModel)parameter;

            sercurity.Reservations.Add(new ReservationViewModel(new Reservation { TraderName = "Test", Time = DateTime.Now, Quantity = 10 }));
        }
    }
}
