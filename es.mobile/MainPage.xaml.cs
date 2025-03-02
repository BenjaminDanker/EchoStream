using System.Net.Http;
using System;
using System.Threading.Tasks;
using Microsoft.Maui.Controls;

namespace es.mobile
{
    public partial class MainPage : ContentPage
    {
        private readonly HttpClient _httpClient;

        public MainPage(HttpClient httpClient)
        {
            InitializeComponent();
            _httpClient = httpClient;

            var button = new Button
            {
                Text = "Test API Connection"
            };

            button.Clicked += async (sender, args) =>
            {
                await TestApiConnection();
            };

            Content = new StackLayout
            {
                Children = { button }
            };
        }

        private async Task TestApiConnection()
        {
            try
            {
                string response = await _httpClient.GetStringAsync("api/test"); // Adjust endpoint if needed
                await DisplayAlert("API Response", response, "OK");
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", ex.Message, "OK");
            }
        }
        private async void OnTestApiClicked(object sender, EventArgs e)
        {
            await TestApiConnection();
        }

    }
}
