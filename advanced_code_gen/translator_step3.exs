def compile(translations) do
  translations_ast = for {locale, mappings} <- translations do
    deftranslations(locale, "", mappings)
  end

  quote do
    def t(locale, path, bindings \\ [])
    unquote(translations_ast)
    def t(_locale, _path, _bindings), do: {:error, :no_translation}
  end
end

defp deftranslations(locales, current_path, mappings) do
end
