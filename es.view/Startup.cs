﻿using Microsoft.Owin;
using Owin;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

[assembly: OwinStartup(typeof(es.view.Startup))]

namespace es.view
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);

            DbConfiguration.SetConfiguration(new MyDbConfiguration()); // AzureDB Configuration
        }
    }
}
