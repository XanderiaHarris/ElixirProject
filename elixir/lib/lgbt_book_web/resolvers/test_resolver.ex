defmodule LGBTBookWeb.Resolvers.TestResolver do
    alias LGBTBook.Tests

    def list_tests(_parents, _args, _resolution) do
        {:ok, Tests.list_tests()}
    end

end