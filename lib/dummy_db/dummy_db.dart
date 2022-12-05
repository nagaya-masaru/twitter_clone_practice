class DummyDataBase {
  static Future<List<Map<String, dynamic>>> userData() async {
    await Future.delayed(const Duration(seconds: 3));
    return [
      {
        'user_name': 'テスト　太郎',
        'image_url':
            'https://images.unsplash.com/photo-1492446845049-9c50cc313f00?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
        'birthday': '2022-12-05',
        'gender': 1,
        'followers': 12345,
        'follows': 123,
        'created_at': '2020-1-1',
      }
    ];
  }
}
