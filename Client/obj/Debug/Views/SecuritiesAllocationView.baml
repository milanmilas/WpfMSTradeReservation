   M S B A M L   `   `   `  ����A  =Client, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:ClientClient  5   	   /clr-namespace:Client.HelpersClient.Helpers  5   	   5clr-namespace:Client.ConvertersClient.Converters  5   	   %    Client.SecuritiesAllocationView   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v16.2, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aR NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:Client     5   	   /helperclr-namespace:Client.Helpers     5   	   6
convertersclr-namespace:Client.Converters     5   	   a ]DevExpress.Xpf.Grid.v16.2, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49af bDevExpress.Xpf.Grid.v16.2.Core, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxg2http://schemas.devexpress.com/winfx/2008/xaml/grid   5	   	   -   5        $��
mainWindow��5   C     � Title$  SecuritiesAllocationView��6	   $	��300��6*   $	��800��67    � DataContext 5      *   $Client.SecuritiesAllocationViewModel  5   
    � 	Resources 5          Client.Helpers.CurrentTime   currentTime1   +Client.Converters.ElapsedTimeMultiConverter  ElapsedTimeMultiConverter*   $Client.Converters.InspectorConverter  inspectorConverter��%W   &	        &	      &	 &       5   
   6     5   
   6/     5   
   6(   5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      .+�5   
   ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $��5q�6   $��Export to Excel��6    ��6:   ��  �� Path$ TestCommand���6_   ��  �� ElementName$ 
securities��$ SelectedItem���5      �� 5       �� 
TargetType" ��6    �� Triggers 5      �� 5      	 �� Binding	 6*   �� $ 
securities��$ VisibleRowCount�
 �� Value
 06l   .a�5   "   ��  �� Property � {� �� Value .  6E   5       5"      5$      �� 5%      ��6   �� $ 
securities��$ VisibleRowCount�5,      %  DevExpress.Xpf.Grid.GridControl  5-   
   -   5        $��
securities��5-      $��1��6,   )  #DevExpress.Xpf.Grid.DataControlBase   AutoGenerateColumns$ AddNew=�6a   #   EnableSmartColumnsGeneration .    ItemsSource 69   �� $ 
Securities�   DetailDescriptor 5.      1  +DevExpress.Xpf.Grid.ContentDetailDescriptor  5/      .  (DevExpress.Xpf.Grid.DetailDescriptorBase   ContentTemplate 50      �� 51      .R�52      �� .+�53   "     $	��500��6W   $��5,5,5,5q�6g    62   �� *Reservations+   Columns 54   &   $	  DevExpress.Xpf.Grid.GridColumn	  55   *   $
  DevExpress.Xpf.Grid.ColumnBase 
  	FieldName$ 
TraderName��69   $  DevExpress.Xpf.Grid.BaseColumn   Width2  ,DevExpress.Xpf.Grid.GridColumnWidthConverter$ * 6P   	  56   *   $ Quantity��69   $ * 6N   	  57   *      Header)  #DevExpress.Xpf.Core.ObjectConverter$ Reservation Time 69   3  -DevExpress.Xpf.Core.DXFrameworkContentElement   	IsEnabled .   
  ReadOnly . $ * 6v    
  CellTemplate 5;   .   �� 5<   2   .R�5=   6   �� ��5>   >   `� 5?   >    `� 	Converter# [ 6K   .1�5@   B   �� $ 	Data.Time�6J   �� 5A   B   $	 Now�6J    �� Source# [  6U   5B   ?   5D   ;   5E   3   5`   +   5b   #   5c      5d      5f         View 5h      #  DevExpress.Xpf.Grid.TableView  5i         AllowPerPixelScrolling . &   DevExpress.Xpf.Grid.DataViewBase   ShowTotalSummary . 6>   5k      5m      5n      