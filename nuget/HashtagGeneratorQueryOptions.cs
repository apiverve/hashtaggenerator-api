using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.HashtagGenerator
{
    /// <summary>
    /// Query options for the Hashtag Generator API
    /// </summary>
    public class HashtagGeneratorQueryOptions
    {
        /// <summary>
        /// The text to generate hashtags from
        /// </summary>
        [JsonProperty("text")]
        public string Text { get; set; }
    }
}
