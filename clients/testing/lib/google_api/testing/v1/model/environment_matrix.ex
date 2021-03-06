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

defmodule GoogleApi.Testing.V1.Model.EnvironmentMatrix do
  @moduledoc """
  The matrix of environments in which the test is to be executed.

  ## Attributes

  - androidDeviceList (AndroidDeviceList): A list of Android devices; the test will be run only on the specified devices. Defaults to: `null`.
  - androidMatrix (AndroidMatrix): A matrix of Android devices. Defaults to: `null`.
  - iosDeviceList (IosDeviceList): A list of iOS devices. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :androidDeviceList => GoogleApi.Testing.V1.Model.AndroidDeviceList.t(),
          :androidMatrix => GoogleApi.Testing.V1.Model.AndroidMatrix.t(),
          :iosDeviceList => GoogleApi.Testing.V1.Model.IosDeviceList.t()
        }

  field(:androidDeviceList, as: GoogleApi.Testing.V1.Model.AndroidDeviceList)
  field(:androidMatrix, as: GoogleApi.Testing.V1.Model.AndroidMatrix)
  field(:iosDeviceList, as: GoogleApi.Testing.V1.Model.IosDeviceList)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.EnvironmentMatrix do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.EnvironmentMatrix.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.EnvironmentMatrix do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
