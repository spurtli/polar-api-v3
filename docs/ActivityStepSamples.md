# Polar::ActivityStepSamples

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**interval** | **Integer** | Sample interval in minutes. | [optional] 
**samples** | [**Array&lt;ActivityStepSample&gt;**](ActivityStepSample.md) | List of individual step sample objects. | [optional] 

## Code Sample

```ruby
require 'Polar'

instance = Polar::ActivityStepSamples.new(interval: null,
                                 samples: null)
```


