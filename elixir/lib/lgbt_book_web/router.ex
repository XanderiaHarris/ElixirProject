defmodule LGBTBookWeb.Router do
  use LGBTBookWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/" do
    pipe_through(:api)

    forward("/graphiql", Absinthe.Plug.GraphiQL,
      schema: LGBTBookWeb.Schema,
      interface: :simple,
      context: %{pubsub: LGBTBookWeb.Endpoint}
    )
  end
end
