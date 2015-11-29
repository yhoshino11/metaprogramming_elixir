# Hub

### Setup
#### Mix
```sh
$ mix deps.get
$ mix deps.compile
```

#### Set username
```elixir
# in lib/hub.ex
...
@username "your username"
...
```

### How to use
#### REPL
```sh
$ cd hub
$ iex -S mix
```
```elixir
iex(1)> Hub. # hit TAB
iex(2)> Hub.your_repo_name["description"] # shows description
iex(3)> Hub.go :your_repo_name # launchs browser
```
