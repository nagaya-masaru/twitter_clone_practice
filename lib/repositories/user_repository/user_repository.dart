import 'package:twitter_clone_zeroplus/dummy_db/dummy_db.dart';

import '../../entities/user/user.dart';

class UserRepository {
  Future<UserModel> getUserData() async {
    final response = await DummyDataBase.userData();
    final userDataList = response.map((e) => UserModel.fromJson(e)).toList();
    return userDataList.first;
  }
}
