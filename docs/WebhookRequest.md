# Polar::WebhookRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**events** | [**Array&lt;WebhookType&gt;**](WebhookType.md) | Type of events to subscribe. | 
**url** | **String** | Url where the webhook notification is sent. | 

## Code Sample

```ruby
require 'Polar'

instance = Polar::WebhookRequest.new(events: [&quot;EXERCISE&quot;,&quot;ACTIVITY_SUMMARY&quot;],
                                 url: https://myapp.example.com/acl_webhook)
```


