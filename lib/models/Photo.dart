class Photo {
  String image;
  String text;

  Photo({this.image,this.text});

  Photo.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['text'] = this.text;
    return data;
  }
}
