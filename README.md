![Hextech Logo](./docs/logo.png)

Ruby wrapper for Riot Api endpoints.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hextech'
```

And then execute:

    $ bundle install


## Usage

You'll need the following environment variable:

```
RIOT_API_KEY='code-goes-here'
```

Each Riot API endpoint has been namespaced by game, endpoint grouping, and (if present) specific endpoint. They get wrapped in a `Dry::Struct` with keys that have been converted to snake case.

```ruby
# Example:

summoner = Hextech::League::Summoner.by_name(name: 'Example Summoner', region: 'euw1')
# => #<Hextech::League::Response::Summoner account_id="1234" id="4321" name="Example Summoner" profile_icon_id=1234 puuid="2468" revision_date=2021-11-01 08:00:00 +0100 summoner_level=100>

summoner.name
# => "Example Summoner"
```

## API Logging

Logging is suppressed by default, with only the basic `INFO` logs being included (i.e. the endpoint being hit and the status response code.) As standard, the API Key query parameter will be redacted from the logs.

In order to increase the logging level to `DEBUG`, use the following environment variable:

```
DEBUG_LOGGER=true
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lilystoney/hextech.
