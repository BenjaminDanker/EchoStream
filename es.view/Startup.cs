using DotNetEnv;  // Import DotNetEnv to load the environment variables
using Microsoft.Owin;
using Owin;
using System;
using System.Collections.Generic;
using System.Linq;

[assembly: OwinStartup(typeof(es.view.Startup))]

namespace es.view
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            // Load the .env file to make sure the environment variables are available
            Env.Load();

            // You can now use the environment variables, for example:
            string connString = Environment.GetEnvironmentVariable("CONNECTION_STRING");
            System.Diagnostics.Debug.WriteLine("Loaded Connection String: " + connString);

            // Configure authentication or any other services
            ConfigureAuth(app);
        }
    }
}
