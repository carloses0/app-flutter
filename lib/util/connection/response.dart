class Response {
  dynamic content;
  int statusCode;
  Map<String, dynamic> headers;

  Response({this.content, this.statusCode, this.headers});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content'] = this.content;
    data['statusCode'] = this.statusCode;
    data['headers'] = this.headers;
    return data;
  }

  Response.fromJson(Map<String, dynamic> json) {
    this.content = json['content'];
    this.statusCode = json['statusCode'];
    this.headers = json['headers'];
  }

}
