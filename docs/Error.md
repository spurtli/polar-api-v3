# Polar::Error

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timestamp** | [**Timestamp**](Timestamp.md) | Timestamp of the error. | [optional] 
**status** | **Integer** | Http status code | [optional] 
**error_type** | **String** | Error type. | [optional] 
**message** | **String** | Human readable error message. | [optional] 
**corr_id** | **String** | Correlation id of the response for problem solving and debugging use. | [optional] 

## Code Sample

```ruby
require 'Polar'

instance = Polar::Error.new(timestamp: null,
                                 status: null,
                                 error_type: null,
                                 message: null,
                                 corr_id: null)
```


