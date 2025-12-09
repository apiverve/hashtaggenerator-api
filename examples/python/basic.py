"""
Hashtag Generator API - Basic Usage Example

This example demonstrates the basic usage of the Hashtag Generator API.
API Documentation: https://docs.apiverve.com/ref/hashtaggenerator
"""

import os
import requests
import json

API_KEY = os.getenv('APIVERVE_API_KEY', 'YOUR_API_KEY_HERE')
API_URL = 'https://api.apiverve.com/v1/hashtaggenerator'

def call_hashtaggenerator_api():
    """
    Make a POST request to the Hashtag Generator API
    """
    try:
        # Request body
        request_body &#x3D; {
    &#x27;text&#x27;: &#x27;Adventure awaits 🌍✈️ Who&#x27;s ready to embark on a journey of a lifetime? Whether you&#x27;re exploring exotic landscapes, immersing yourself in vibrant cultures, or simply indulging in delicious cuisines, there&#x27;s something magical about travel that fills the soul with joy and wonder. Let&#x27;s wander together and create unforgettable memories! 🌟&#x27;,
    &#x27;count&#x27;: 5
}

        headers = {
            'x-api-key': API_KEY,
            'Content-Type': 'application/json'
        }

        response = requests.post(API_URL, headers=headers, json=request_body)

        # Raise exception for HTTP errors
        response.raise_for_status()

        data = response.json()

        # Check API response status
        if data.get('status') == 'ok':
            print('✓ Success!')
            print('Response data:', json.dumps(data['data'], indent=2))
            return data['data']
        else:
            print('✗ API Error:', data.get('error', 'Unknown error'))
            return None

    except requests.exceptions.RequestException as e:
        print(f'✗ Request failed: {e}')
        return None

if __name__ == '__main__':
    print('📤 Calling Hashtag Generator API...\n')

    result = call_hashtaggenerator_api()

    if result:
        print('\n📊 Final Result:')
        print(json.dumps(result, indent=2))
    else:
        print('\n✗ API call failed')
