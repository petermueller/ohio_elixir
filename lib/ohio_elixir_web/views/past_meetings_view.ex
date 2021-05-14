defmodule OhioElixirWeb.PastMeetingsView do
  use OhioElixirWeb, :view

  alias OhioElixir.Events.Speaker

  def speaker_link(%Speaker{social_link: url} = speaker) when not is_nil(url),
    do: raw('<a href="#{url}" target="_blank">#{speaker.name}</a><br>')

  def speaker_link(speaker), do: raw('#{speaker.name}<br>')
end
