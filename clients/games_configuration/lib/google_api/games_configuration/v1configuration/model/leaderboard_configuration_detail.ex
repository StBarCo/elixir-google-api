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

defmodule GoogleApi.GamesConfiguration.V1configuration.Model.LeaderboardConfigurationDetail do
  @moduledoc """
  This is a JSON template for a leaderboard configuration detail.

  ## Attributes

  - iconUrl (String.t): The icon url of this leaderboard. Writes to this field are ignored. Defaults to: `null`.
  - kind (String.t): Uniquely identifies the type of this resource. Value is always the fixed string gamesConfiguration#leaderboardConfigurationDetail. Defaults to: `null`.
  - name (LocalizedStringBundle): Localized strings for the leaderboard name. Defaults to: `null`.
  - scoreFormat (GamesNumberFormatConfiguration): The score formatting for the leaderboard. Defaults to: `null`.
  - sortRank (integer()): The sort rank of this leaderboard. Writes to this field are ignored. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :iconUrl => any(),
          :kind => any(),
          :name => GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedStringBundle.t(),
          :scoreFormat =>
            GoogleApi.GamesConfiguration.V1configuration.Model.GamesNumberFormatConfiguration.t(),
          :sortRank => any()
        }

  field(:iconUrl)
  field(:kind)
  field(:name, as: GoogleApi.GamesConfiguration.V1configuration.Model.LocalizedStringBundle)

  field(
    :scoreFormat,
    as: GoogleApi.GamesConfiguration.V1configuration.Model.GamesNumberFormatConfiguration
  )

  field(:sortRank)
end

defimpl Poison.Decoder,
  for: GoogleApi.GamesConfiguration.V1configuration.Model.LeaderboardConfigurationDetail do
  def decode(value, options) do
    GoogleApi.GamesConfiguration.V1configuration.Model.LeaderboardConfigurationDetail.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.GamesConfiguration.V1configuration.Model.LeaderboardConfigurationDetail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end