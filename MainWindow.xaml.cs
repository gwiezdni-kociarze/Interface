using System.Windows;
using System.Windows.Input;
using System.Windows.Media.Animation;
using System.Windows.Media;
using System.Windows.Threading;

namespace meow
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            AnimateText();
            StartLoading();
        }
        private void StartLoading()
        {
            // Simulate loading time with progress bar update
            DispatcherTimer timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromMilliseconds(20); // Adjust the timer interval for progress bar updates
            timer.Tick += Timer_Tick;
            timer.Start();
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            // Update progress bar value
            LoadingProgressBar.Value += 1;
            if (LoadingProgressBar.Value >= 100)
            {
                (sender as DispatcherTimer).Stop();
                StartFadeOutLoadingScreen();
            }
        }

        private void StartFadeOutLoadingScreen()
        {
            Storyboard fadeOutStoryboard = this.FindResource("FadeOutLoadingScreenStoryboard") as Storyboard;
            fadeOutStoryboard.Begin();
        }

        private void FadeOutLoadingScreenStoryboard_Completed(object sender, EventArgs e)
        {
            LoadingScreen.Visibility = Visibility.Hidden;
            Menu.Visibility = Visibility.Visible;
            Storyboard fadeInStoryboard = this.FindResource("FadeInMenuStoryboard") as Storyboard;
            fadeInStoryboard.Begin();
        }

        private void PlayButton_Click(object sender, RoutedEventArgs e)
        {
            Menu.Visibility = Visibility.Hidden;
            Game.Visibility = Visibility.Visible;
        }

        private void Arrow_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            Game.Visibility = Visibility.Hidden;
            Menu.Visibility= Visibility.Visible;
        }
        private void Label_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            Application.Current.Shutdown();
        }
        private void AnimateText()
        {
            AnimateLetter(translateM, 0);
            AnimateLetter(translateE, 200);
            AnimateLetter(translateO, 400);
            AnimateLetter(translateW, 600);
        }
        private void QuitTextBlock_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void PlayTextBlock_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            Menu.Visibility = Visibility.Hidden;
            Game.Visibility = Visibility.Visible;
        }
        private void AnimateLetter(TranslateTransform translateTransform, double beginTime)
        {
            DoubleAnimation animation = new DoubleAnimation
            {
                From = 0,
                To = 20,
                Duration = new Duration(TimeSpan.FromSeconds(1)),
                AutoReverse = true,
                RepeatBehavior = RepeatBehavior.Forever,
                BeginTime = TimeSpan.FromMilliseconds(beginTime)
            };

            translateTransform.BeginAnimation(TranslateTransform.YProperty, animation);
        }
    }
}
