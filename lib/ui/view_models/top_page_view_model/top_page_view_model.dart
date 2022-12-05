import 'package:state_notifier/state_notifier.dart';
import 'package:twitter_clone_zeroplus/entities/post/post.dart';
import 'package:twitter_clone_zeroplus/repositories/user_repository/user_repository.dart';
import 'package:twitter_clone_zeroplus/ui/states/top_page_state/top_page_state.dart';

class TopPageViewModel extends StateNotifier<TopPageState> with LocatorMixin {
  TopPageViewModel() : super(const TopPageState());
  final _repository = UserRepository();

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  Future<void> getUserData() async {
    final response = await _repository.getUserData();
    state = state.copyWith(user: response);
  }

  Future<bool> setPost(String title) async {
    await Future.delayed(const Duration(seconds: 2));
    final list = List.from(state.posts).cast<PostModel>();
    list.add(
      PostModel(
        bodyText: title,
        postedAt: DateTime.now(),
      ),
    );
    state = state.copyWith(posts: list);
    return true;
  }
}
