# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Admin.Reports_v1.Api.Activities do
  @moduledoc """
  API calls for all endpoints tagged `Activities`.
  """

  alias GoogleApi.Admin.Reports_v1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Retrieves a list of activities for a specific customer and application.

  ## Parameters

  - connection (GoogleApi.Admin.Reports_v1.Connection): Connection to server
  - user_key (String.t): Represents the profile id or the user email for which the data should be filtered. When &#39;all&#39; is specified as the userKey, it returns usageReports for all users.
  - application_name (String.t): Application name for which the events are to be retrieved.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :actorIpAddress (String.t): IP Address of host where the event was performed. Supports both IPv4 and IPv6 addresses.
    - :customerId (String.t): Represents the customer for which the data is to be fetched.
    - :endTime (String.t): Return events which occurred at or before this time.
    - :eventName (String.t): Name of the event being queried.
    - :filters (String.t): Event parameters in the form [parameter1 name][operator][parameter1 value],[parameter2 name][operator][parameter2 value],...
    - :maxResults (integer()): Number of activity records to be shown in each page.
    - :orgUnitID (String.t): the organizational unit&#39;s(OU) ID to filter activities from users belonging to a specific OU or one of its sub-OU(s)
    - :pageToken (String.t): Token to specify next page.
    - :startTime (String.t): Return events which occurred at or after this time.

  ## Returns

  {:ok, %GoogleApi.Admin.Reports_v1.Model.Activities{}} on success
  {:error, info} on failure
  """
  @spec reports_activities_list(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Admin.Reports_v1.Model.Activities.t()} | {:error, Tesla.Env.t()}
  def reports_activities_list(
        connection,
        user_key,
        application_name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :actorIpAddress => :query,
      :customerId => :query,
      :endTime => :query,
      :eventName => :query,
      :filters => :query,
      :maxResults => :query,
      :orgUnitID => :query,
      :pageToken => :query,
      :startTime => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/activity/users/{userKey}/applications/{applicationName}", %{
        "userKey" => URI.encode_www_form(user_key),
        "applicationName" => URI.encode_www_form(application_name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Admin.Reports_v1.Model.Activities{}])
  end

  @doc """
  Push changes to activities

  ## Parameters

  - connection (GoogleApi.Admin.Reports_v1.Connection): Connection to server
  - user_key (String.t): Represents the profile id or the user email for which the data should be filtered. When &#39;all&#39; is specified as the userKey, it returns usageReports for all users.
  - application_name (String.t): Application name for which the events are to be retrieved.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :actorIpAddress (String.t): IP Address of host where the event was performed. Supports both IPv4 and IPv6 addresses.
    - :customerId (String.t): Represents the customer for which the data is to be fetched.
    - :endTime (String.t): Return events which occurred at or before this time.
    - :eventName (String.t): Name of the event being queried.
    - :filters (String.t): Event parameters in the form [parameter1 name][operator][parameter1 value],[parameter2 name][operator][parameter2 value],...
    - :maxResults (integer()): Number of activity records to be shown in each page.
    - :orgUnitID (String.t): the organizational unit&#39;s(OU) ID to filter activities from users belonging to a specific OU or one of its sub-OU(s)
    - :pageToken (String.t): Token to specify next page.
    - :startTime (String.t): Return events which occurred at or after this time.
    - :resource (Channel): 

  ## Returns

  {:ok, %GoogleApi.Admin.Reports_v1.Model.Channel{}} on success
  {:error, info} on failure
  """
  @spec reports_activities_watch(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Admin.Reports_v1.Model.Channel.t()} | {:error, Tesla.Env.t()}
  def reports_activities_watch(
        connection,
        user_key,
        application_name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :actorIpAddress => :query,
      :customerId => :query,
      :endTime => :query,
      :eventName => :query,
      :filters => :query,
      :maxResults => :query,
      :orgUnitID => :query,
      :pageToken => :query,
      :startTime => :query,
      :resource => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/activity/users/{userKey}/applications/{applicationName}/watch", %{
        "userKey" => URI.encode_www_form(user_key),
        "applicationName" => URI.encode_www_form(application_name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Admin.Reports_v1.Model.Channel{}])
  end
end
