using System;
using System.Windows;
using System.Windows.Controls.Primitives;
using System.Windows.Input;

namespace Change_Style
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private enum AccentThemes
        {
            Blue,
            Green,
            Orange,
            Pink,
            Red
        };

        public MainWindow()
        {
            InitializeComponent();
            SetComboboxEntrys();
            AccentThemeComboBox.Text = AccentThemes.Blue.ToString();
        }

        private void SetComboboxEntrys()
        {
            foreach (var entry in Enum.GetValues(typeof(AccentThemes)))
            {
                AccentThemeComboBox.Items.Add(entry);
            }
        }

        private void AccentThemeWindow_OnKeyUp(object sender, KeyEventArgs e)
        {
            if (e != null && e.Key == Key.Escape)
            {
                Close();
            }
        }

        private void ChangeButton_OnClick(object sender, RoutedEventArgs e)
        {
            ApplyAccent((AccentThemes)Enum.Parse(typeof(AccentThemes), AccentThemeComboBox.Text, true));
        }

        private static void ApplyAccent(AccentThemes accentTheme)
        {
            try
            {
                Application.Current.Resources.MergedDictionaries.Add(new ResourceDictionary
                {
                    Source = new Uri("/Change-Style;component/Styles/" + accentTheme + ".xaml", UriKind.Relative)
                });
            }
            catch
            {
                MessageBox.Show("Error on applying Style", "Style " + accentTheme + " doesn't exist!");
                Application.Current.Resources.MergedDictionaries.Add(new ResourceDictionary
                {
                    Source = new Uri("/Change-Style;component/Styles/Blue.xaml", UriKind.Relative)
                });
            }
        }

        private void ButtonClose_OnClick(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void MainHeaderThumb_OnDragDelta(object sender, DragDeltaEventArgs e)
        {
            Left = Left + e.HorizontalChange;
            Top = Top + e.VerticalChange;
        }
    }
}
