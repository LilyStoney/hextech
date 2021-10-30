![Riot API Logo](./docs/logo.png)

Ruby wrapper for Riot Api endpoints.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'riot_api'
```

And then execute:

    $ bundle install


## Usage

You'll need the following environment variable:

```
RIOT_API_KEY='code-goes-here'
```

Each Riot API endpoint has been namespaced by game, endpoint grouping, and (if present) specific endpoint.

```ruby
# Example:

RiotApi::League::Summoner.by_name(name: 'Example Summoner', region: 'euw1')
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lilystoney/riot_api.
