# Polar::AvailableUserData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **Integer** | User identifier who has available data. | [optional] 
**data_type** | **String** | Type of available data. | [optional] 
**url** | **String** | URI pointing to transaction initiation endpoint for user | [optional] 

## Code Sample

```ruby
require 'Polar'

instance = Polar::AvailableUserData.new(user_id: 475,
                                 data_type: ACTIVITY_SUMMARY,
                                 url: https://www.polaraccesslink.com/v3/users/475/activity-transactions)
```


