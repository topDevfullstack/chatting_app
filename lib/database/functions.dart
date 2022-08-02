import 'class.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class Functions {
  static final Functions _instance = Functions.internal();
  factory Functions() => _instance;
  Functions.internal();
  static Database _db;

  Future<Database> createDatabase() async {
    if (_db != null) {
      return _db;
    }
    //define the path to the database
    String path = join(await getDatabasesPath(), 'savedQuotee');
    _db = await openDatabase(path, version: 1, onCreate: (Database db, int v) {
      //create all tables
      db.execute(
          "create table savedQuote(id integer primary key autoincrement, writer varchar(50), text varchar(255), title varchar(50))");
    });
    return _db;
  }

  Future<int> createCourse(SavedQuote savedQuote) async {
    Database db = await createDatabase();
    //db.rawInsert('insert into courses')
    return db.insert('savedQuote', savedQuote.toMap());
  }
  Future<List> allCourses() async {
    Database db = await createDatabase();
    //db.rawQuery("select * from courses")
    return db.query('savedQuote');
  }
  Future t3rib2()async{
    Set finish = {};
    var wal = await allCourses();
    wal.forEach((element) {
      finish.add(SavedQuote(element));
    });

    return finish.toList();

  }
 Future t3rib(title) async {
    Set finish =  {} ;
    var a7a = await allCourses();
      a7a.forEach((element) {
        if(SavedQuote(element).title == title ){
          finish.add(SavedQuote(element));
        }
      });
    return   finish.toList();

  }



  Future<int> deletequotes( text) async {
    Database db = await createDatabase();
    var a7a = await allCourses();
    int wal;
    a7a.forEach((element) {
      if (SavedQuote(element).text == text) {
        wal = SavedQuote(element).id;
        return db.delete('savedQuote', where: 'id = ?', whereArgs: [wal]);
      }
    });
  }
  Future<int> deletequotes2(title) async {
    Database db = await createDatabase();
    var a7a = await allCourses();
    int wal;
    a7a.forEach((element) {
      if (SavedQuote(element).title == title) {
        wal = SavedQuote(element).id;
        return db.delete('savedQuote', where: 'id = ?', whereArgs: [wal]);
      }
    });
  }
  Future<int> deleteallquotes() async {
    Database db = await createDatabase();
    var a7a = await allCourses();
    int wal;
    a7a.forEach((element) {
        wal = SavedQuote(element).id;
        return db.delete('savedQuote', where: 'id = ?', whereArgs: [wal]);
    });
  }
  Future<int> updatequotes( oldtitle , newtitle) async {
    Database db = await createDatabase();
    var a7a = await allCourses();
    int wal;
    a7a.forEach((element) {
      if (SavedQuote(element).title == oldtitle) {
       SavedQuote(element).title = newtitle;
       var ff  = SavedQuote(element);
       ff.title = newtitle;
        wal = SavedQuote(element).id;
        print(ff.title);
        return db.update('savedQuote', ff.toMap() , where: 'id = ?', whereArgs: [wal]);
      }
    });
  }
  Future<int> updatequote(time) async {
    Database db = await createDatabase();
    var a7a = await allCourses();
    int wal;
    a7a.forEach((element) {
        SavedQuote(element).time = time;
        var ff  = SavedQuote(element);
        ff.time = time;
        wal = SavedQuote(element).id;
        return db.update('savedQuote', ff.toMap() , where: 'id = ?', whereArgs: [wal]);
    });
  }
  Future<int> updatequot(index) async {
    Database db = await createDatabase();
    var a7a = await allCourses();
    int wal;
    a7a.forEach((element) {
      SavedQuote(element).index = index;
      var ff  = SavedQuote(element);
      ff.index = index;
      wal = SavedQuote(element).id;
      return db.update('savedQuote', ff.toMap() , where: 'id = ?', whereArgs: [wal]);
    });
  }

  Future Onupdate(SavedQuote saved)async{
    Database db = await createDatabase();
    db.update("savedQuote", saved.toMap() , where: "id = ?" , whereArgs: [saved.id]);
  }
}


class Functions2 {
   Database _db;

  Future<Database> createDatabase() async {
    if (_db != null) {
      return _db;
    }
    //define the path to the database
    String path = join(await getDatabasesPath(), 'savedQuotee2');
    _db = await openDatabase(path, version: 1, onCreate: (Database db, int v) {
      //create all tables
      db.execute(
          "create table savedQuote2(id integer primary key autoincrement, title varchar(50))");
    });
    return _db;
  }

  Future<int> createCourse(SavedQuote2 savedQuote2) async {
    Database db = await createDatabase();
    //db.rawInsert('insert into courses')
    return db.insert('savedQuote2', savedQuote2.toMap());
  }

  Future<List> allCourses() async {
    Database db = await createDatabase();
    //db.rawQuery("select * from courses")
    return db.query('savedQuote2');
  }
   Future<List> forward(title) async {
    List a7a = await allCourses();
    List end = [];
    a7a.forEach((element) {
      if(SavedQuote2(element).title != title){
        end.add(SavedQuote2(element));
      }
    });
    return end ;
   }


   Future Onupdate(SavedQuote2 saved)async{
     Database db = await createDatabase();
     db.update("savedQuote2", saved.toMap() , where: "id = ?" , whereArgs: [saved.id]);
   }
   Future<int> deletefolder(int id) async{
     Database db = await createDatabase();
     return db.delete('savedQuote2',where: 'id = ?',whereArgs:[id] );
   }
}

class tinme {
  Database _db;

  Future<Database> createDatabase() async {
    if (_db != null) {
      return _db;
    }
    //define the path to the database
    String path = join(await getDatabasesPath(), 'timee');
    _db =
    await openDatabase(path, version: 1, onCreate: (Database db, int v)  {
      //create all tables
      db.execute(
          "create table time(id integer primary key autoincrement, time integer)");
       db.execute(
           "create table indexwal(id integer primary key autoincrement, indexx integer)");
    });
    return _db;
  }

  Future<int> createCourse(Time time) async {
    Database db = await createDatabase();
    //db.rawInsert('insert into courses')
    return db.insert('time', time.toMap());
  }


  Future<List> allCourses() async {
    Database db = await createDatabase();
    //db.rawQuery("select * from courses")
    return db.query('time');
  }


  Future Onupdate(Time time) async {
    Database db = await createDatabase();
    db.update("time", time.toMap(), where: "id = ?", whereArgs: [time.id]);
  }
    Future<int> creataaa(Indexx index) async {
      Database db = await createDatabase();
      //db.rawInsert('insert into courses')
      return db.insert('indexwal', index.toMap());
    }

    Future<List> all() async {
      Database db = await createDatabase();
      //db.rawQuery("select * from courses")
      return db.query('indexwal');
    }

    Future update(Indexx indexx) async {
      Database db = await createDatabase();
      db.update(
          "indexwal", indexx.toMap(), where: "id = ?", whereArgs: [indexx.id]);
    }
}