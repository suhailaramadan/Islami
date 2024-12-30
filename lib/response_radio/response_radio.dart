import 'package:collection/collection.dart';

import 'radio.dart';

class ResponseRadio {
  List<Radios>? radios;

  ResponseRadio({this.radios});

  factory ResponseRadio.fromJson(Map<String, dynamic> json) => ResponseRadio(
        radios: (json['radios'] as List<dynamic>?)
            ?.map((e) => Radios.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'radios': radios?.map((e) => e.toJson()).toList(),
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! ResponseRadio) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => radios.hashCode;
}
