defmodule I18n do
  use Translator

  locale "en",
  flash: [
    hello: "Hello %{first} %{last}",
    bye: "Bye, %{name}"
  ],
  users: [
    title: "Users",
  ]
end
