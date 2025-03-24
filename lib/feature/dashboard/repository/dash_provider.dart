import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_application_1/feature/dashboard/repository/dash_state.dart';
import 'package:flutter_application_1/shared/domain/models/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dash_provider.g.dart';

@riverpod
class Dash extends _$Dash {
  @override
  DashState build() {
    return DashState(users: IList());
  }

  void setUsers(IList<User> users) {
    state = state.copyWith(users: users);
  }
}
