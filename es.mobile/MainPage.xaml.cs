using System.Net.Http;
using System;
using System.Threading.Tasks;
using Microsoft.Maui.Controls;

namespace es.mobile
{
    public partial class MainPage : ContentPage
    {
        private readonly HttpClient _httpClient;
        private const string LocalServerUrl = "https://localhost:44334/";

        public MainPage(HttpClient httpClient)
        {
            InitializeComponent();
            _httpClient = httpClient;

            // Initialize WebViews
           
            InitializeLocalWebView();
        }

        private void InitializeLocalWebView()
        {
            LocalWebView.Navigating += (s, e) =>
            {
                LocalLoadingIndicator.IsVisible = true;
                LocalLoadingIndicator.IsRunning = true;
            };

            LocalWebView.Navigated += (s, e) =>
            {
                LocalLoadingIndicator.IsVisible = false;
                LocalLoadingIndicator.IsRunning = false;

                if (e.Result != WebNavigationResult.Success)
                {
                    DisplayAlert("Error", $"Failed to load local server: {e.Result}", "OK");
                }
            };

            // for Windows debugging
            LocalWebView.Source = LocalServerUrl;

            // Alternative for Android/iOS 
            // LocalWebView.Source = "http://10.0.2.2:44334/"; // Android
            // LocalWebView.Source = "http://localhost:44334/"; // iOS

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