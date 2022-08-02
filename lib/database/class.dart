import 'package:equatable/equatable.dart';

class SavedQuote extends Equatable{
  int id;
  String text, writer ;
  String title;
  int time ,index;

  SavedQuote(dynamic obj){
    id = obj['id'];
    text = obj['text'];
    writer = obj['writer'];
    title = obj['title'];

  }
  Map<String, dynamic> toMap() => {'id' : id, 'text': text, 'writer' : writer, "title" : title,};

  @override
  List<Object> get props => [text];
}
class SavedQuote2{
  int id;
  String title ;
  SavedQuote2(dynamic obj){
    id = obj['id'];
    title = obj['title'];
  }
  Map<String, dynamic> toMap() => {'id' : id,  "title" : title};
}

class Next{
  String title;
  Next(this.title);
}

class Time{
  int id;
  int time ;
  Time(dynamic obj){
    id = obj['id'];
    time = obj['time'];
  }
  Map<String, dynamic> toMap() => {'id' : id,  "time" : time};
}


class Indexx{
  int id;
  int index ;
  Indexx(dynamic obj){
    id = obj['id'];
    index = obj['indexx'];
  }
  Map<String, dynamic> toMap() => {'id' : id,  "indexx" : index};
}