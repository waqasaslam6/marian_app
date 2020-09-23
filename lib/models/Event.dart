class Event {
  String date;
  String time;
  String image;

  Event({this.date,this.time,this.image});

  Event.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    time = json['time'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['time'] = this.time;
    data['image'] = this.image;
    return data;
  }
}
