# Hashtag Generator API - Dart/Flutter Client

Hashtag Generator is a simple tool for generating hashtags. It returns a list of hashtags based on the text provided.

[![pub package](https://img.shields.io/pub/v/apiverve_hashtaggenerator.svg)](https://pub.dev/packages/apiverve_hashtaggenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Hashtag Generator API](https://apiverve.com/marketplace/hashtaggenerator?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_hashtaggenerator: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_hashtaggenerator/apiverve_hashtaggenerator.dart';

void main() async {
  final client = HashtaggeneratorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'text': 'Adventure awaits 🌍✈️ Who\'s ready to embark on a journey of a lifetime? Whether you\'re exploring exotic landscapes, immersing yourself in vibrant cultures, or simply indulging in delicious cuisines, there\'s something magical about travel that fills the soul with joy and wonder. Let\'s wander together and create unforgettable memories! 🌟',
      'count': 5
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Hashtag Generator API](https://apiverve.com/marketplace/hashtaggenerator?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/hashtaggenerator](https://docs.apiverve.com/ref/hashtaggenerator?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
