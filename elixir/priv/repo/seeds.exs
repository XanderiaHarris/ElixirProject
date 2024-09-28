# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     LGBTBook.Repo.insert!(%LGBTBook.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
import Ecto.Query, only: [from: 2]

alias LGBTBook.Repo
alias LGBTBook.Tests.Test

test = Repo.get_by(Test, words: "Testing This out")
if test != nil do
    Repo.delete!(test)
end
Repo.insert!(%Test{words: "Testing This out"})
test2 = Repo.get_by(Test, words: "Test Two")
if test2 != nil do
    Repo.delete!(test)
end
Repo.insert!(%Test{words: "Test Two"})