﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Client
{
    /// <summary>
    /// Interaction logic for SecuritiesAllocationView.xaml
    /// </summary>
    public partial class SecuritiesAllocationView : Window
    {
        public SecuritiesAllocationView()
        {
            InitializeComponent();

            var gridControl = this.securities;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var gridControl = this.securities.VisibleRowCount;
        }
    }
}
