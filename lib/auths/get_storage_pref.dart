import 'package:get_storage/get_storage.dart';

class StoragePref {
  static GetStorage box = GetStorage();
  static Future setUsername({required String username})async{
    return box.write("username", username);
  }

  static Future getUsername()async{
    return box.read("username");
  }
}