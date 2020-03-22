# Polar::ActivityZoneSample

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**activity_zones** | [**Array&lt;DurationZone&gt;**](DurationZone.md) | List of heart rate zones with duration. | [optional] 
**time** | **String** | Start time of sample segment. | [optional] 

## Code Sample

```ruby
require 'Polar'

instance = Polar::ActivityZoneSample.new(activity_zones: null,
                                 time: null)
```


