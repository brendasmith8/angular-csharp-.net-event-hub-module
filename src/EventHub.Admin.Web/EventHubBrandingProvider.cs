﻿using Volo.Abp.DependencyInjection;
using Volo.Abp.Ui.Branding;

namespace EventHub.Admin.Web
{
    [Dependency(ReplaceServices = true)]
    public class EventHubBrandingProvider : DefaultBrandingProvider
    {
        public override string AppName => "EventHub";
    }
}
