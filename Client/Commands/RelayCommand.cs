using System;
using System.Windows.Input;

namespace Client.Commands
{
    public class RelayCommand : ICommand
    {
        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }

        private Action<object> _action;
        private Func<object, bool> _canExecute;

        public RelayCommand(Action<object> action, Func<object, bool> canExecute)
        {
            _action = action;
            _canExecute = canExecute;
        }
        public RelayCommand(Action<object> methodToExecute)
            : this(methodToExecute, null)
        {
        }

        public bool CanExecute(object parameter)
        {
            if (_canExecute == null)
            {
                return true;
            }
            else
            {
                bool result = _canExecute(parameter);
                return result;
            }
        }

        public void Execute(object parameter)
        {
            _action(parameter);
        }
    }
}
