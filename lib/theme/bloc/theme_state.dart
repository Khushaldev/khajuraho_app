import 'package:equatable/equatable.dart';

class ThemeState extends Equatable {
  const ThemeState({required this.isLightTheme});
  factory ThemeState.fromMap(Map<String, dynamic> map) {
    return ThemeState(
      isLightTheme: map['isLightTheme'] as bool? ?? true,
    );
  }

  final bool isLightTheme;

  @override
  List<Object> get props => [isLightTheme];

  Map<String, dynamic> toMap() {
    return {
      'isLightTheme': isLightTheme,
    };
  }
}
