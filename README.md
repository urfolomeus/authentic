# Authentic

An example of an umbrella app with authentication and authorisation.

## Setup

1. Get the code

   ```bash
   git clone git@github.com:urfolomeus/authentic.git
   ```

2. Install dependencies

   ```bash
   cd authentic
   mix deps.get
   cd authentic_web/assets
   npm install
   cd ../..
   ```

3. Create the database

   ```bash
   mix ecto.create
   ```

## Running the tests

```bash
mix test
cd authentic_web/assets
npm run test
cd ../..
```

## Running the server

```bash
iex -S mix phx.server
```
