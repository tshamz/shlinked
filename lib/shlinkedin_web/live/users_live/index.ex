defmodule ShlinkedinWeb.UsersLive.Index do
  use ShlinkedinWeb, :live_view
  alias Shlinkedin.Profiles

  @impl true
  def mount(params, session, socket) do
    # KNOWN BUG: RIGHT WHEN YOU CREATE AN ACCOUNT, THIS BUTTON DOESN"T WORK! PROBLABLY NOT LOADED INTO SOCKET!
    socket = is_user(session, socket)

    {:ok,
     socket
     |> assign(profiles: Profiles.list_non_test_profiles())}
  end
end