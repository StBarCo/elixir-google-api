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

defmodule GoogleApi.CloudBilling.V1.Model.ListSkusResponse do
  @moduledoc """
  Response message for &#x60;ListSkus&#x60;.

  ## Attributes

  - nextPageToken (String.t): A token to retrieve the next page of results. To retrieve the next page, call &#x60;ListSkus&#x60; again with the &#x60;page_token&#x60; field set to this value. This field is empty if there are no more results to retrieve. Defaults to: `null`.
  - skus ([Sku]): The list of public SKUs of the given service. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => any(),
          :skus => list(GoogleApi.CloudBilling.V1.Model.Sku.t())
        }

  field(:nextPageToken)
  field(:skus, as: GoogleApi.CloudBilling.V1.Model.Sku, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBilling.V1.Model.ListSkusResponse do
  def decode(value, options) do
    GoogleApi.CloudBilling.V1.Model.ListSkusResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBilling.V1.Model.ListSkusResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
