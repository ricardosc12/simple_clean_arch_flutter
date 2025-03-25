mixin EnumUpperStatus on Enum {
  String get itemValue => name.toUpperCase();
  String get itemLabel;
}
