# polar-api-v3

Polar - the Ruby gem for the Polar Accesslink API

Polar Accesslink API documentation

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 3.40.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://www.polar.com/accesslink](https://www.polar.com/accesslink)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build polar-api-v3.gemspec
```

Then either install the gem locally:

```shell
gem install ./polar-api-v3-1.0.0.gem
```

(for development, run `gem install --dev ./polar-api-v3-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'polar-api-v3', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'polar-api-v3', :git => 'https://github.com/spurtli/polar-api-v3.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'polar-api-v3'

# Setup authorization
Polar.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Polar::DailyActivityApi.new
transaction_id = 56 # Integer | Transaction identifier
user_id = 56 # Integer | User identifier

begin
  #Commit transaction
  api_instance.commit_activity_transaction(transaction_id, user_id)
rescue Polar::ApiError => e
  puts "Exception when calling DailyActivityApi->commit_activity_transaction: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://www.polaraccesslink.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Polar::DailyActivityApi* | [**commit_activity_transaction**](docs/DailyActivityApi.md#commit_activity_transaction) | **PUT** /v3/users/{user-id}/activity-transactions/{transaction-id} | Commit transaction
*Polar::DailyActivityApi* | [**create_activity_transaction**](docs/DailyActivityApi.md#create_activity_transaction) | **POST** /v3/users/{user-id}/activity-transactions | Create transaction
*Polar::DailyActivityApi* | [**get_activity_summary**](docs/DailyActivityApi.md#get_activity_summary) | **GET** /v3/users/{user-id}/activity-transactions/{transaction-id}/activities/{activity-id} | Get activity summary
*Polar::DailyActivityApi* | [**get_step_samples**](docs/DailyActivityApi.md#get_step_samples) | **GET** /v3/users/{user-id}/activity-transactions/{transaction-id}/activities/{activity-id}/step-samples | Get step samples
*Polar::DailyActivityApi* | [**get_zone_samples**](docs/DailyActivityApi.md#get_zone_samples) | **GET** /v3/users/{user-id}/activity-transactions/{transaction-id}/activities/{activity-id}/zone-samples | Get zone samples
*Polar::DailyActivityApi* | [**list_activities**](docs/DailyActivityApi.md#list_activities) | **GET** /v3/users/{user-id}/activity-transactions/{transaction-id} | List activities
*Polar::ExercisesApi* | [**get_exercise_fit_without_transaction**](docs/ExercisesApi.md#get_exercise_fit_without_transaction) | **GET** /v3/exercises/{exerciseId}/fit | Get exercise FIT
*Polar::ExercisesApi* | [**get_exercise_without_transaction**](docs/ExercisesApi.md#get_exercise_without_transaction) | **GET** /v3/exercises/{exerciseId} | Get exercise
*Polar::ExercisesApi* | [**list_exercises_without_transaction**](docs/ExercisesApi.md#list_exercises_without_transaction) | **GET** /v3/exercises | List exercises
*Polar::PhysicalInfoApi* | [**commit_physical_info_transaction**](docs/PhysicalInfoApi.md#commit_physical_info_transaction) | **PUT** /v3/users/{user-id}/physical-information-transactions/{transaction-id} | Commit transaction
*Polar::PhysicalInfoApi* | [**create_physical_info_transaction**](docs/PhysicalInfoApi.md#create_physical_info_transaction) | **POST** /v3/users/{user-id}/physical-information-transactions | Create transaction
*Polar::PhysicalInfoApi* | [**get_physical_info**](docs/PhysicalInfoApi.md#get_physical_info) | **GET** /v3/users/{user-id}/physical-information-transactions/{transaction-id}/physical-informations/{physical-info-id} | Get physical info
*Polar::PhysicalInfoApi* | [**list_physical_infos**](docs/PhysicalInfoApi.md#list_physical_infos) | **GET** /v3/users/{user-id}/physical-information-transactions/{transaction-id} | List physical infos
*Polar::PullNotificationsApi* | [**list**](docs/PullNotificationsApi.md#list) | **GET** /v3/notifications | List
*Polar::TrainingDataApi* | [**commit_exercise_transaction**](docs/TrainingDataApi.md#commit_exercise_transaction) | **PUT** /v3/users/{user-id}/exercise-transactions/{transaction-id} | Commit transaction
*Polar::TrainingDataApi* | [**create_exercise_transaction**](docs/TrainingDataApi.md#create_exercise_transaction) | **POST** /v3/users/{user-id}/exercise-transactions | Create transaction
*Polar::TrainingDataApi* | [**get_available_samples**](docs/TrainingDataApi.md#get_available_samples) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/samples | Get available samples
*Polar::TrainingDataApi* | [**get_exercise_summary**](docs/TrainingDataApi.md#get_exercise_summary) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id} | Get exercise summary
*Polar::TrainingDataApi* | [**get_fit**](docs/TrainingDataApi.md#get_fit) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/fit | Get FIT (beta)
*Polar::TrainingDataApi* | [**get_gpx**](docs/TrainingDataApi.md#get_gpx) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/gpx | Get GPX
*Polar::TrainingDataApi* | [**get_heart_rate_zones**](docs/TrainingDataApi.md#get_heart_rate_zones) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/heart-rate-zones | Get heart rate zones
*Polar::TrainingDataApi* | [**get_samples**](docs/TrainingDataApi.md#get_samples) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/samples/{type-id} | Get samples
*Polar::TrainingDataApi* | [**get_tcx**](docs/TrainingDataApi.md#get_tcx) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id}/exercises/{exercise-id}/tcx | Get TCX
*Polar::TrainingDataApi* | [**list_exercises**](docs/TrainingDataApi.md#list_exercises) | **GET** /v3/users/{user-id}/exercise-transactions/{transaction-id} | List exercises
*Polar::UsersApi* | [**delete_user**](docs/UsersApi.md#delete_user) | **DELETE** /v3/users/{user-id} | Delete user
*Polar::UsersApi* | [**get_user_information**](docs/UsersApi.md#get_user_information) | **GET** /v3/users/{user-id} | Get user information
*Polar::UsersApi* | [**register_user**](docs/UsersApi.md#register_user) | **POST** /v3/users | Register user
*Polar::WebhooksApi* | [**create_webhook**](docs/WebhooksApi.md#create_webhook) | **POST** /v3/webhooks | Create webhook
*Polar::WebhooksApi* | [**delete_webhook**](docs/WebhooksApi.md#delete_webhook) | **DELETE** /v3/webhooks/{webhook-id} | Delete webhook
*Polar::WebhooksApi* | [**get_webhook**](docs/WebhooksApi.md#get_webhook) | **GET** /v3/webhooks | Get webhook
*Polar::WebhooksApi* | [**update_webhook**](docs/WebhooksApi.md#update_webhook) | **PATCH** /v3/webhooks/{webhook-id} | Update webhook


## Documentation for Models

 - [Polar::Activity](docs/Activity.md)
 - [Polar::ActivityLog](docs/ActivityLog.md)
 - [Polar::ActivityStepSample](docs/ActivityStepSample.md)
 - [Polar::ActivityStepSamples](docs/ActivityStepSamples.md)
 - [Polar::ActivityZoneSample](docs/ActivityZoneSample.md)
 - [Polar::ActivityZoneSamples](docs/ActivityZoneSamples.md)
 - [Polar::AvailableUserData](docs/AvailableUserData.md)
 - [Polar::AvailableUserDatas](docs/AvailableUserDatas.md)
 - [Polar::CreatedWebhook](docs/CreatedWebhook.md)
 - [Polar::CreatedWebhookData](docs/CreatedWebhookData.md)
 - [Polar::DurationZone](docs/DurationZone.md)
 - [Polar::Error](docs/Error.md)
 - [Polar::Exercise](docs/Exercise.md)
 - [Polar::ExerciseHashId](docs/ExerciseHashId.md)
 - [Polar::Exercises](docs/Exercises.md)
 - [Polar::HeartRate](docs/HeartRate.md)
 - [Polar::PhysicalInformation](docs/PhysicalInformation.md)
 - [Polar::PhysicalInformations](docs/PhysicalInformations.md)
 - [Polar::Register](docs/Register.md)
 - [Polar::Sample](docs/Sample.md)
 - [Polar::Samples](docs/Samples.md)
 - [Polar::TransactionLocation](docs/TransactionLocation.md)
 - [Polar::User](docs/User.md)
 - [Polar::UserExtraInfo](docs/UserExtraInfo.md)
 - [Polar::WebhookInfo](docs/WebhookInfo.md)
 - [Polar::WebhookInfoData](docs/WebhookInfoData.md)
 - [Polar::WebhookPatch](docs/WebhookPatch.md)
 - [Polar::WebhookPayload](docs/WebhookPayload.md)
 - [Polar::WebhookPing](docs/WebhookPing.md)
 - [Polar::WebhookRequest](docs/WebhookRequest.md)
 - [Polar::WebhookType](docs/WebhookType.md)
 - [Polar::Zone](docs/Zone.md)
 - [Polar::Zones](docs/Zones.md)


## Documentation for Authorization


### Basic

- **Type**: HTTP basic authentication

### OAuth2


- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: https://flow.polar.com/oauth2/authorization
- **Scopes**: 
  - accesslink.read_all: Allows read access to user&#39;s data

