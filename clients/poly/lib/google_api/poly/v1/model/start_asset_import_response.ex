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

defmodule GoogleApi.Poly.V1.Model.StartAssetImportResponse do
  @moduledoc """
  A response message from a request to startImport. This is returned in the response field of the Operation.

  ## Attributes

  - assetId (String.t): The id of newly created asset. If this is empty when the operation is complete it means the import failed. Please refer to the assetImportMessages field to understand what went wrong. Defaults to: `null`.
  - assetImportId (String.t): The id of the asset import. Defaults to: `null`.
  - assetImportMessages ([AssetImportMessage]): The message from the asset import. This will contain any warnings (or - in the case of failure - errors) that occurred during import. Defaults to: `null`.
  - publishUrl (String.t): The publish URL for the asset. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assetId => any(),
          :assetImportId => any(),
          :assetImportMessages => list(GoogleApi.Poly.V1.Model.AssetImportMessage.t()),
          :publishUrl => any()
        }

  field(:assetId)
  field(:assetImportId)
  field(:assetImportMessages, as: GoogleApi.Poly.V1.Model.AssetImportMessage, type: :list)
  field(:publishUrl)
end

defimpl Poison.Decoder, for: GoogleApi.Poly.V1.Model.StartAssetImportResponse do
  def decode(value, options) do
    GoogleApi.Poly.V1.Model.StartAssetImportResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Poly.V1.Model.StartAssetImportResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
