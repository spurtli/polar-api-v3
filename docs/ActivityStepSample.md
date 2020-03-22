# Polar::ActivityStepSample

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**steps** | **Integer** | Number of steps in sample segment. If element is null, step samples are not available for current segment. | [optional] 
**time** | **String** | Start time of sample segment. | [optional] 

## Code Sample

```ruby
require 'Polar'

instance = Polar::ActivityStepSample.new(steps: null,
                                 time: 12:37:33.000)
```


