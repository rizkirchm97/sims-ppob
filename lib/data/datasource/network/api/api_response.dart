
class ApiResponse<T> {
  final String? message;
  final dynamic data;

  ApiResponse({
    required this.message,
    required this.data,
  });

  factory ApiResponse.fromJson(
      final Map<String, dynamic> json,
      Function(Map<String, dynamic> json) fromJson,
      ) {
    dynamic data = json['data'] ?? json['contents'];

    if (data != null) {
      final jsonData = data.toString();

      if (jsonData.isNotEmpty) {
        if (jsonData == '{') {
          data = fromJson(data);
        } else if (jsonData == '[') {
          data = (data as List<dynamic>).map((e) {
            return fromJson(e);
          }).toList();
        }
      }
    }

    return ApiResponse(
      message: json['message'] ?? json['statusName'],
      data: data,
    );
  }
}
