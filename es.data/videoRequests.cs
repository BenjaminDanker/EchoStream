using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Threading;
using System.Threading.Tasks;
using System.Dynamic;

using Google.Apis.Auth.OAuth2;
using Google.Apis.Services;
using Google.Apis.Upload;
using Google.Apis.Util.Store;
using Google.Apis.YouTube.v3;
using Google.Apis.YouTube.v3.Data;


namespace es.data
{
    public class VideoObj
    {
        public string title;
        public string description;
        public string id;
    }

    public class videoRequests
    {
        public async Task<VimeoDotNet.Models.Paginated<VimeoDotNet.Models.Video>> getNVideosVim(int videoCount)
        {
            //var videos = new List<>();

            try
            {
                var clientId = "3e6717ccc02b265f9dda00c0e816f8b44fa43a64";
                var clientSecret = "z7nu0cErfUXI8fh7DVDJvdIWa0/3fpMNtIKYe74n3qX0AdpZJkoDhdbzrbBVGVAmhbgy3wFPz4rsjp8cP/+kKLP0aYYntQgDD1x9HbiuEOn0EOmlXQfeFRvNEMSTJ+CN";
                // This URL needs to be added to your 
                // callback url list on your app settings page in developer.vimeo.com.
                var redirectionUrl = "http://localhost:44376/Pages/PostVideo";
                // You can put state information here that gets sent
                // to your callback url in the ?state= parameter
                var stateInformation = "1337";
                var client = new VimeoDotNet.VimeoClient(clientId, clientSecret);
                var url = client.GetOauthUrl(redirectionUrl, new List<string>() {
                    "public"
                    }, stateInformation);
                // The user will use this URL to log in and allow access to your app.
                // The web page will redirect to your redirection URL with the access code in the query parameters.
                // If you are also the user, 
                // you can just pull the code out of the URL yourself and use it right here.
                Debug.WriteLine(url);
                var accessCode = "482964e4139577e65241e3642c94f528";
                //var token = await client.GetAccessTokenAsync(accessCode, redirectionUrl);
            
                //we need a new client now, if it is a one off job you can just
                //you are now ready to upload or whatever using the userAuthenticatedClient
                var userAuthenticatedClient = new VimeoDotNet.VimeoClient(accessCode);

                var videosList = await userAuthenticatedClient.GetVideosAsync(228318898, 1, 1);

                return videosList;
            }
            catch (Exception e) {
                Debug.WriteLine(e.Message);

                return null;
            }
        }
        public List<VideoObj> getNVideosYT(int videoCount)
        {
            var videos = new List<VideoObj>();
            try
            {
                YouTubeService yt = new YouTubeService(new BaseClientService.Initializer() { ApiKey = "AIzaSyBY36G1easRwpKYlzleJ33jpA-zWyVVHQ8" });
                ChannelsResource.ListRequest channelsListRequest = yt.Channels.List("contentDetails");
                //channelsListRequest.ForUsername = "genmatter3907";
                channelsListRequest.Id = "UC3MA6L6NsrfMcrqyS54rmNg";
                ChannelListResponse channelsListResponse = channelsListRequest.Execute();

                foreach (Channel channel in channelsListResponse.Items)
                {
                    string uploadsListId = channel.ContentDetails.RelatedPlaylists.Uploads;
                    int requestCount = 0;
                    string nextPageToken = "";
                    while (nextPageToken != null && requestCount < 1)
                    {
                        requestCount ++;
                        PlaylistItemsResource.ListRequest playlistItemsListRequest = yt.PlaylistItems.List("snippet");
                        playlistItemsListRequest.PlaylistId = uploadsListId;
                        playlistItemsListRequest.MaxResults = videoCount;
                        playlistItemsListRequest.PageToken = nextPageToken;
                        PlaylistItemListResponse playlistItemsListResponse = playlistItemsListRequest.Execute();
                        foreach (PlaylistItem playlistItem in playlistItemsListResponse.Items)
                        {
                            VideoObj video = new VideoObj();
                            video.title = playlistItem.Snippet.Title;
                            video.description = playlistItem.Snippet.Description;
                            video.id = playlistItem.Snippet.ResourceId.VideoId;

                            videos.Add(video);
                        }
                        nextPageToken = playlistItemsListResponse.NextPageToken;
                    }
                }

                return videos;
            }
            catch (Exception e)
            {
                Debug.WriteLine(e.Message);

                return null;
            }
        }
    }
}
