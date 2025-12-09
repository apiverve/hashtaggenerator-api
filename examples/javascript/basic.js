/**
 * Hashtag Generator API - Basic Usage Example
 *
 * This example demonstrates the basic usage of the Hashtag Generator API.
 * API Documentation: https://docs.apiverve.com/ref/hashtaggenerator
 */

const API_KEY = process.env.APIVERVE_API_KEY || 'YOUR_API_KEY_HERE';
const API_URL = 'https://api.apiverve.com/v1/hashtaggenerator';

/**
 * Make a POST request to the Hashtag Generator API
 */
async function callHashtagGeneratorAPI() {
  try {
    // Request body
    const requestBody &#x3D; {
    &quot;text&quot;: &quot;Adventure awaits 🌍✈️ Who&#x27;s ready to embark on a journey of a lifetime? Whether you&#x27;re exploring exotic landscapes, immersing yourself in vibrant cultures, or simply indulging in delicious cuisines, there&#x27;s something magical about travel that fills the soul with joy and wonder. Let&#x27;s wander together and create unforgettable memories! 🌟&quot;,
    &quot;count&quot;: 5
};

    const response = await fetch(API_URL, {
      method: 'POST',
      headers: {
        'x-api-key': API_KEY,
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(requestBody)
    });

    // Check if response is successful
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }

    const data = await response.json();

    // Check API response status
    if (data.status === 'ok') {
      console.log('✓ Success!');
      console.log('Response data:', data.data);
      return data.data;
    } else {
      console.error('✗ API Error:', data.error || 'Unknown error');
      return null;
    }

  } catch (error) {
    console.error('✗ Request failed:', error.message);
    return null;
  }
}

// Run the example
callHashtagGeneratorAPI()
  .then(result => {
    if (result) {
      console.log('\n📊 Final Result:');
      console.log(JSON.stringify(result, null, 2));
    }
  });
