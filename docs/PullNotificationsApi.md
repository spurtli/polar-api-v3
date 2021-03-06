# Polar::PullNotificationsApi

All URIs are relative to *https://www.polaraccesslink.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](PullNotificationsApi.md#list) | **GET** /v3/notifications | List



## list

> AvailableUserDatas list

List

Get list of available exercises and activities for users

### Example

```ruby
# load the gem
require 'polar-api-v3'
# setup authorization
Polar.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Polar::PullNotificationsApi.new

begin
  #List
  result = api_instance.list
  p result
rescue Polar::ApiError => e
  puts "Exception when calling PullNotificationsApi->list: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AvailableUserDatas**](AvailableUserDatas.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/xml

