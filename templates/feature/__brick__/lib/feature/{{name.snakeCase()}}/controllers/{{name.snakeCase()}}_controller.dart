import 'package:flutter_application_1/feature/{{name.snakeCase()}}/states/{{name.snakeCase()}}_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '{{name.snakeCase()}}_controller.g.dart';

@riverpod
class {{name.pascalCase()}} extends _${{name.pascalCase()}} {
  @override
  {{name.pascalCase()}}State build() {
    return {{name.pascalCase()}}State(data: "Data");
  }
}

// Future Provider
@Riverpod(keepAlive: false)
class {{name.pascalCase()}}Async extends _${{name.pascalCase()}}Async {
  @override
  FutureOr<Union{{name.pascalCase()}}State> build() async {
    await Future.delayed(Duration(milliseconds: 1000));
    return Union{{name.pascalCase()}}State.external(name: "External Data");
  }

  Future<bool> checkUnion() async {
    final data = state.valueOrNull;
    if (data is {{name.pascalCase()}}Internal && data.internalId.isNotEmpty) {
      return true;
    }
    return false;
  }

  void switch{{name.pascalCase()}}() {
    final data = state.valueOrNull;
    if (data is {{name.pascalCase()}}External) {
      state = AsyncValue.data(
        Union{{name.pascalCase()}}State.internal(name: "Iternal Data", internalId: "1923801"),
      );
    } else {
      state = AsyncValue.data(Union{{name.pascalCase()}}State.external(name: "External Data"));
    }
  }
}

@riverpod
bool isInternal{{name.pascalCase()}}(Ref ref) {
  final state = ref.watch({{name.camelCase()}}AsyncProvider);
  final value = state.valueOrNull;

  return value is {{name.pascalCase()}}Internal;
}
