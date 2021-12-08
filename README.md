![Hextech Logo](./docs/logo.png)

Simply a Ruby wrapper for Riot Api endpoints.

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

Each Riot API endpoint integrated into the gem has been namespaced by game, endpoint grouping, and (if present) specific endpoint. The responses to these endpoints will be wrapped in a `Dry::Struct` with keys that have been converted to snake case.

```ruby
# Example:

summoner = Hextech::League::Summoner.by_name(name: 'Example Summoner', region: 'euw1')
# => #<Hextech::League::Response::Summoner account_id="1234" id="4321" name="Example Summoner" profile_icon_id=1234 puuid="2468" revision_date=2021-11-01 08:00:00 +0100 summoner_level=100>

summoner.name
# => "Example Summoner"
```

## API Logging

Whenever the API Key is logged to the console, it will be replaced with `[REPLACED]`.

Logging is suppressed by default. In order to increase the logging level to `DEBUG`, use the following environment variable:

```
DEBUG_LOGGER=true
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lilystoney/hextech.
