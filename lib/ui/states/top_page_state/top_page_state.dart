import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitter_clone_zeroplus/entities/user/user.dart';

import '../../../entities/post/post.dart';
part 'top_page_state.freezed.dart';

@freezed
class TopPageState with _$TopPageState {
  const factory TopPageState({
    @Default(UserModel()) UserModel user,
    @Default(<PostModel>[]) List<PostModel> posts,
  }) = _TopPageState;
}
