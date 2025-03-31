import 'package:flutter_application_1/feature/profile/states/profile_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_controller.g.dart';

@riverpod
class Profile extends _$Profile {
  @override
  ProfileState build() {
    return ProfileState(data: "Profile");
  }
}

// Future Provider
@Riverpod(keepAlive: false)
class ProfileAsync extends _$ProfileAsync {
  @override
  FutureOr<UnionProfileState> build() async {
    await Future.delayed(Duration(milliseconds: 1000));
    return UnionProfileState.common(name: "Common User");
  }

  Future<bool> checkUnion() async {
    final data = state.valueOrNull;
    if (data is ProfileAdmin && data.adminId) {
      return true;
    }
    return false;
  }

  void switchProfile() {
    final data = state.valueOrNull;
    if (data is ProfileCommon) {
      state = AsyncValue.data(
        UnionProfileState.admin(name: "Admin", adminId: true),
      );
    } else {
      state = AsyncValue.data(UnionProfileState.common(name: "Common"));
    }
  }
}

@riverpod
bool isAdmin(Ref ref) {
  final state = ref.watch(profileAsyncProvider);
  final value = state.valueOrNull;

  return value is ProfileAdmin;
}
