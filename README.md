# Phoenix Forum App

1. You need to have Elixir & Phoenix installed

2. After installing Phoenix, go to project's directory and run `mix deps.get` and `npm install` 

3. Make sure you set database credentials in `config/dev.exs` (preferably `username: "postgres", password: "postgres"`)

4. Run `mix ecto.create`

5. Run `mix ecto.migrate Repo`

6. Run `mix phx.server`

7. Visit `http://localhost:4000/`

You can create new topics by visiting `http://localhost:4000/new`

## Features 

* Github authentication
* Web Sockets
