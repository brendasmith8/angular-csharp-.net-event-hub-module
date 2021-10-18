﻿using Microsoft.Extensions.Options;
using System;
using Volo.Abp.DependencyInjection;
using Volo.Abp.UI.Navigation.Urls;

namespace Payment.Web.PaymentRequest
{
    public class PaymentUrlBuilder : ITransientDependency, IPaymentUrlBuilder
    {
        private readonly AppUrlOptions urlOptions;

        public PaymentUrlBuilder(IOptions<AppUrlOptions> urlOptions)
        {
            this.urlOptions = urlOptions.Value;
        }

        public virtual Uri BuildCheckoutUrl(Guid paymentRequestId)
        {
            return new Uri(urlOptions.Applications["MVC"].RootUrl.EnsureEndsWith('/') + "Payment/Checkout?paymentRequestId=" + paymentRequestId);
        }
    }
}
