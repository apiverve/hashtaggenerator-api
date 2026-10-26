# Hashtag Generator API - Ruby Gem

Hashtag Generator creates relevant hashtags from any plain text or post caption. Pass in a text snippet to receive an array of suggested social tags, with paid plans able to customize the tag count.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_hashtaggenerator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_hashtaggenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_hashtaggenerator'

# Initialize the client
client = APIVerve::Hashtaggenerator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  text: "Adventure awaits 🌍✈️ Who's ready to embark on a journey of a lifetime? Whether you're exploring exotic landscapes, immersing yourself in vibrant cultures, or simply indulging in delicious cuisines, there's something magical about travel that fills the soul with joy and wonder. Let's wander together and create unforgettable memories! 🌟",
  count: 5
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ text: "Adventure awaits 🌍✈️ Who's ready to embark on a journey of a lifetime? Whether you're exploring exotic landscapes, immersing yourself in vibrant cultures, or simply indulging in delicious cuisines, there's something magical about travel that fills the soul with joy and wonder. Let's wander together and create unforgettable memories! 🌟", count: 5 })
  puts response["data"]
rescue APIVerve::Hashtaggenerator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Hashtaggenerator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Hashtaggenerator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "count": 5,
    "hashtags": [
      "#adventure",
      "#awaits",
      "#ready",
      "#embark",
      "#journey"
    ],
    "topicHashtags": [
      {
        "hashtag": "#Adventure",
        "phrase": "adventure",
        "relevance": 0.579
      },
      {
        "hashtag": "#Travel",
        "phrase": "travel",
        "relevance": 0.567
      },
      {
        "hashtag": "#Journey",
        "phrase": "journey",
        "relevance": 0.48
      },
      {
        "hashtag": "#ExoticLandscapes",
        "phrase": "exotic landscapes",
        "relevance": 0.436
      },
      {
        "hashtag": "#VibrantCultures",
        "phrase": "vibrant cultures",
        "relevance": 0.314
      }
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/hashtaggenerator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/hashtaggenerator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/hashtaggenerator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
