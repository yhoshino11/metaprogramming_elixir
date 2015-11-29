ExUnit.start
Code.require_file("translator.exs", __DIR__)

defmodule TranslatorTest do
  use ExUnit.Case

  defmodule I18n do
    use Translator

    locale "en", [
      foo: "bar",
      flash: [
        notice: [
          alert: "Alert!",
          hello: "hello %{first} %{last}"
        ]
      ],
      users: [
        title: "Users",
        profile: [
          title: "Profiles"
        ]
      ]
    ]
  end

  test "it recursively walks translations tree" do
    assert I18n.t("en", "users.title") == "Users"
    assert I18n.t("en", "users.profile.title") == "Profiles"
  end

  test "it handles translations at root level" do
    assert I18n.t("en", "foo") == "bar"
  end

  test "it interplates bindings" do
    # TODO: make it work
    assert I18n.t("en", "flash.notice.hello", first: "Hello", last: "W") == "hello Hello W!"
  end
end
