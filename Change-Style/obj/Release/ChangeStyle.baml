   M S B A M L   `   `   `  ���� G  CChange-Style, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Change_StyleChange_Style      Change_Style.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ,localclr-namespace:Change_Style     -     � Title$  Change Style��$	��520�� J� SnapsToDevicePixels . $	��320�� � AllowsTransparency .  � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterOwner=�.����    CoreBorderStyle#��[  ._��  � RowDefinitions �� $��48 ��� $��* ��� $��48 �.+�]� $��0��.+���  # DataWindowHeaderStackPanelStyle#��[ .+��� $��Icons/tool_brush.png��  UserControlImageStyle#��[ �� $��Change Style (Accent)��  DataWindowTitelLabelStyle#��[ n� -   $��0�� J� Opacity$ 0Q�
������ ��Z� ]� $��0��.+���  ( $DataWindowCloseButtonStackPanelStyle#��[ .+��� -    � ToolTip$ Close��$��32��$��28��  WindowActionButton#��[ .��F� $��10��$��10��	 �� Stretch$
	 Fill=�|��������<R��C�Z��@��=R��m5�����O���C��m5��Ѥ���n5��C0P������n5�H<R�����Z���CѬ<R\�������<R���� *
Foreground+
 �� RelativeSource
 ��  �� Mode$ FindAncestor=� �� AncestorType$ ButtonL��� $��1��   DataWindowContentBorderStyle#��[ ._���  �� Orientation$ Vertical=�$
��Left=�.+��� $��20���� $ 
Horizontal=�$��	20,4,20,4q�.+��� $��Change Style:��  DataWindowTextBoxStyle#��[ $	��Top=��� $P��JHere you can change the Style (or Accent) of your application. Try it out!��$
��Auto��#��[ $	��320��$
��Wrap=� �� TextAlignment$
 Left=�$��	12,0,12,0q��� $ 
Horizontal=�$��
20,24,20,4q�$��Center=�.+��� -   $��AccentThemeComboBox�� �� SelectedIndex$ 0��$	��160��  RubyCombobox#��[ $��	12,0,12,0q�$��0���� $��20��� $��2�� 	 DataWindowFooterGridStyle#��[	 .+��� -   $��CloseButton��$��Right=�$��0,0,32,0q�$��Change Style��$y�Visible=�