# Hashtag Generator API - PHP Package

Hashtag Generator is a simple tool for generating hashtags. It returns a list of hashtags based on the text provided.

## Installation

Install via Composer:

```bash
composer require apiverve/hashtaggenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Hashtaggenerator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'text' => 'Adventure awaits 🌍✈️ Who\'s ready to embark on a journey of a lifetime? Whether you\'re exploring exotic landscapes, immersing yourself in vibrant cultures, or simply indulging in delicious cuisines, there\'s something magical about travel that fills the soul with joy and wonder. Let\'s wander together and create unforgettable memories! 🌟',
    'count' => 5
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Hashtaggenerator\Client;
use APIVerve\Hashtaggenerator\Exceptions\APIException;
use APIVerve\Hashtaggenerator\Exceptions\ValidationException;

try {
    $response = $client->execute(['text' => 'Adventure awaits 🌍✈️ Who\'s ready to embark on a journey of a lifetime? Whether you\'re exploring exotic landscapes, immersing yourself in vibrant cultures, or simply indulging in delicious cuisines, there\'s something magical about travel that fills the soul with joy and wonder. Let\'s wander together and create unforgettable memories! 🌟', 'count' => 5]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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
    ]
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/hashtaggenerator?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/hashtaggenerator?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/hashtaggenerator?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
