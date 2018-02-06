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

defmodule GoogleApi.Storage.V1.Model.BucketLifecycleCondition do
  @moduledoc """
  The condition(s) under which the action will be taken.

  ## Attributes

  - age (integer()): Age of an object (in days). This condition is satisfied when an object reaches the specified age. Defaults to: `null`.
  - createdBefore (Date.t): A date in RFC 3339 format with only the date part (for instance, \&quot;2013-01-15\&quot;). This condition is satisfied when an object is created before midnight of the specified date in UTC. Defaults to: `null`.
  - isLive (boolean()): Relevant only for versioned objects. If the value is true, this condition matches live objects; if the value is false, it matches archived objects. Defaults to: `null`.
  - matchesStorageClass ([String.t]): Objects having any of the storage classes specified by this condition will be matched. Values include MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, STANDARD, and DURABLE_REDUCED_AVAILABILITY. Defaults to: `null`.
  - numNewerVersions (integer()): Relevant only for versioned objects. If the value is N, this condition is satisfied when there are at least N versions (including the live version) newer than this version of the object. Defaults to: `null`.
  """

  defstruct [
    :age,
    :createdBefore,
    :isLive,
    :matchesStorageClass,
    :numNewerVersions
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.BucketLifecycleCondition do
  import GoogleApi.Storage.V1.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:createdBefore, :date, nil, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.BucketLifecycleCondition do
  def encode(value, options) do
    GoogleApi.Storage.V1.Deserializer.serialize_non_nil(value, options)
  end
end
