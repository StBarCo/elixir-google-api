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

defmodule GoogleApi.FirebaseDynamicLinks.V1.Model.DeviceInfo do
  @moduledoc """
  Signals associated with the device making the request.

  ## Attributes

  - deviceModelName (String.t): Device model name. Defaults to: `null`.
  - languageCode (String.t): Device language code setting. Defaults to: `null`.
  - languageCodeFromWebview (String.t): Device language code setting obtained by executing JavaScript code in WebView. Defaults to: `null`.
  - languageCodeRaw (String.t): Device language code raw setting. iOS does returns language code in different format than iOS WebView. For example WebView returns en_US, but iOS returns en-US. Field below will return raw value returned by iOS. Defaults to: `null`.
  - screenResolutionHeight (String.t): Device display resolution height. Defaults to: `null`.
  - screenResolutionWidth (String.t): Device display resolution width. Defaults to: `null`.
  - timezone (String.t): Device timezone setting. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceModelName => any(),
          :languageCode => any(),
          :languageCodeFromWebview => any(),
          :languageCodeRaw => any(),
          :screenResolutionHeight => any(),
          :screenResolutionWidth => any(),
          :timezone => any()
        }

  field(:deviceModelName)
  field(:languageCode)
  field(:languageCodeFromWebview)
  field(:languageCodeRaw)
  field(:screenResolutionHeight)
  field(:screenResolutionWidth)
  field(:timezone)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.DeviceInfo do
  def decode(value, options) do
    GoogleApi.FirebaseDynamicLinks.V1.Model.DeviceInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.DeviceInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end