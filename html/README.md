# Html

#### DSL for HTML with Elixir Syntax

### How to use
```sh
$ cd html
$ mix compile
$ iex -S mix
```
```elixir
iex> Template.render
"<table><tr><td>Cell 0</td><td>Cell 1</td><td>Cell 2</td><td>Cell 3</td><td>Cell 4</td><td>Cell 5</td></tr></table><div>Some Nested Content</div>"
```
