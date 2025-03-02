namespace es.mobile
{
    public partial class AppShell : Shell
    {
        public AppShell(MainPage mainPage)
        {
            InitializeComponent();
            // Set the default route to MainPage
            Routing.RegisterRoute(nameof(MainPage), typeof(MainPage));

            // Set MainPage as the first page shown
            Items.Add(new ShellContent
            {
                Title = "Home",
                Content = mainPage
            });
        }
    }
}
