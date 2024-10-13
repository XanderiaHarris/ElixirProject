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
alias LGBTBook.Books.Book

# Adding Tests to database
test = Repo.get_by(Test, words: "Testing This out")
if test != nil do
    Repo.delete!(test)
end
Repo.insert!(%Test{words: "Testing This out"})
test2 = Repo.get_by(Test, words: "Test Two")
if test2 != nil do
    Repo.delete!(test2)
end
Repo.insert!(%Test{words: "Test Two"})

# Adding Books to database
book = Repo.get_by(Book, title: "Where Echoes Die")
if book != nil do
    Repo.delete!(book)
end
Repo.insert!(%Book{title: "Where Echoes Die", author: "Courtney Gould", genre: "YA Mystery",
    lgbt_category: "Lesbian", isbn_code: "9781250825797"})
book2 = Repo.get_by(Book, title: "A Dowry of Blood")
if book != nil do
    Repo.delete!(book2)
end
Repo.insert!(%Book{title: "A Dowry of Blood", author: "S.T. Gibson", genre: "Horror Vampires",
    lgbt_category: "Bi, Queer", isbn_code: "9780316501071"})