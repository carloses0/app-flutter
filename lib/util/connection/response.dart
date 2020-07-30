class Response {
  String _content;
  int _statusCode;
  Map<String, dynamic> _headers;

  Response(this._content, this._statusCode, this._headers);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this._content;
    data['email'] = this._statusCode;
    data['senha'] = this._headers;
    return data;
  }

  Response.fromJson(Map<String, dynamic> json) {
    this._content = json['nome'];
    this._statusCode = json['email'];
    this._headers = json['senha'];
  }

  Map<String, dynamic> get headers => _headers;

  set headers(Map<String, dynamic> value) {
    _headers = value;
  }

  int get statusCode => _statusCode;

  set statusCode(int value) {
    _statusCode = value;
  }

  String get content => _content;

  set content(String value) {
    _content = value;
  }
}
