/// Response models for the Hashtag Generator API.

/// API Response wrapper.
class HashtaggeneratorResponse {
  final String status;
  final dynamic error;
  final HashtaggeneratorData? data;

  HashtaggeneratorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory HashtaggeneratorResponse.fromJson(Map<String, dynamic> json) => HashtaggeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? HashtaggeneratorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Hashtag Generator API.

class HashtaggeneratorData {
  int? count;
  List<String>? hashtags;

  HashtaggeneratorData({
    this.count,
    this.hashtags,
  });

  factory HashtaggeneratorData.fromJson(Map<String, dynamic> json) => HashtaggeneratorData(
      count: json['count'],
      hashtags: (json['hashtags'] as List?)?.cast<String>(),
    );
}

class HashtaggeneratorRequest {
  String text;
  int? count;

  HashtaggeneratorRequest({
    required this.text,
    this.count,
  });

  Map<String, dynamic> toJson() => {
      'text': text,
      if (count != null) 'count': count,
    };
}
