class WebtoonModel {
  final String title, thumb, id;

  WebtoonModel.fromJson(Map<String, dynamic> json) // : = 초기화
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
