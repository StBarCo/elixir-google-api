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

defmodule GoogleApi.Analytics.V3.Model.RealtimeData do
  @moduledoc """
  Real time data for a given view (profile).

  ## Attributes

  - columnHeaders ([GaDataColumnHeaders]): Column headers that list dimension names followed by the metric names. The order of dimensions and metrics is same as specified in the request. Defaults to: `null`.
  - id (String.t): Unique ID for this data response. Defaults to: `null`.
  - kind (String.t): Resource type. Defaults to: `null`.
  - profileInfo (RealtimeDataProfileInfo):  Defaults to: `null`.
  - query (RealtimeDataQuery):  Defaults to: `null`.
  - rows ([[String.t]]): Real time data rows, where each row contains a list of dimension values followed by the metric values. The order of dimensions and metrics is same as specified in the request. Defaults to: `null`.
  - selfLink (String.t): Link to this page. Defaults to: `null`.
  - totalResults (integer()): The total number of rows for the query, regardless of the number of rows in the response. Defaults to: `null`.
  - totalsForAllResults (%{optional(String.t) &#x3D;&gt; String.t}): Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columnHeaders => list(GoogleApi.Analytics.V3.Model.GaDataColumnHeaders.t()),
          :id => any(),
          :kind => any(),
          :profileInfo => GoogleApi.Analytics.V3.Model.RealtimeDataProfileInfo.t(),
          :query => GoogleApi.Analytics.V3.Model.RealtimeDataQuery.t(),
          :rows => list(),
          :selfLink => any(),
          :totalResults => any(),
          :totalsForAllResults => map()
        }

  field(:columnHeaders, as: GoogleApi.Analytics.V3.Model.GaDataColumnHeaders, type: :list)
  field(:id)
  field(:kind)
  field(:profileInfo, as: GoogleApi.Analytics.V3.Model.RealtimeDataProfileInfo)
  field(:query, as: GoogleApi.Analytics.V3.Model.RealtimeDataQuery)
  field(:rows, type: :list)
  field(:selfLink)
  field(:totalResults)
  field(:totalsForAllResults, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.RealtimeData do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.RealtimeData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.RealtimeData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end