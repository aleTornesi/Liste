import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

abstract class FileManager{
  static Future<String> get _localPath async {
    final Directory directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  static File get localFile {
    print(_localPath.toString());
    return File(join("account.txt"));
  }

  static Future<bool> save(String data) async {
    File file = localFile;
    file.writeAsString(data);
    return true;
  }

  static Future<String> load() async {
    return localFile.readAsString();
  }

  static bool exists() {
    return localFile.existsSync();
  }
}