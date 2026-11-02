/// Response models for the Hashtag Generator API.

/// API Response wrapper.
class HashtaggeneratorResponse {
  final String status;
  final dynamic error;
  final HashtaggeneratorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  HashtaggeneratorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory HashtaggeneratorResponse.fromJson(Map<String, dynamic> json) => HashtaggeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? HashtaggeneratorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Hashtag Generator API.

class HashtaggeneratorData {
  num? count;
  List<String>? hashtags;
  List<HashtaggeneratorDataTopichashtagsItem>? topicHashtags;

  HashtaggeneratorData({
    this.count,
    this.hashtags,
    this.topicHashtags,
  });

  factory HashtaggeneratorData.fromJson(Map<String, dynamic> json) => HashtaggeneratorData(
      count: json['count'],
      hashtags: (json['hashtags'] as List?)?.cast<String>(),
      topicHashtags: (json['topicHashtags'] as List?)?.map((e) => HashtaggeneratorDataTopichashtagsItem.fromJson(e)).toList(),
    );
}

class HashtaggeneratorDataTopichashtagsItem {
  String? hashtag;
  String? phrase;
  num? relevance;

  HashtaggeneratorDataTopichashtagsItem({
    this.hashtag,
    this.phrase,
    this.relevance,
  });

  factory HashtaggeneratorDataTopichashtagsItem.fromJson(Map<String, dynamic> json) => HashtaggeneratorDataTopichashtagsItem(
      hashtag: json['hashtag'],
      phrase: json['phrase'],
      relevance: json['relevance'],
    );
}

class HashtaggeneratorRequest {
  String text;
  num? count;

  HashtaggeneratorRequest({
    required this.text,
    this.count,
  });

  Map<String, dynamic> toJson() => {
      'text': text,
      if (count != null) 'count': count,
    };
}
