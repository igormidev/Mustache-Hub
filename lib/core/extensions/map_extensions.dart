// handleMap(Map map, [String key]) {
//   map.foreach((key, value) {
//     if (value is Map) {
//       handleMap(value, key);
//     } else if (value is List)
//       handleList(value, key);
//     else
//       handleValue(value, key);
//   });
// }

// handleList(List list, [String key]) {
//   list.foreach((entry) {
//     if (entry is Map) {
//       handleMap(entry);
//     } else if (entry is List)
//       handleList(entry);
//     else
//       handleValue(entry);
//   });
// }

// handleValue(dynamic value, [String key]) {
//   // ...
// }

// extension MapExtension<K, V> on Map<K, V> {
//   Map<K2, V2> recursiveMap<K2, V2>(
//     MapEntry<K2, V2> Function(dynamic key, dynamic value) convert,
//   ) {
//     final Map<K2, V2> payload = {};
//     forEach((key, value) {
//       final e = convert(key, value);
//       payload.addAll({e.key: e.value});
//     });
//     return payload;
//   }

//   Map<K2, V2> _handleMap<K2, V2>(
//     Map key,
//     dynamic value,
//     MapEntry<K2, V2> Function(dynamic key, dynamic value) convert,
//   ) {
//     return recursiveMap(convert);
//   }

//   Map<K2, V2> _handleList<K2, V2>(
//     String key,
//     List value,
//     Map<K2, V2> Function(dynamic key, dynamic value) convert,
//   ) { 
//     final Map<K2, V2> response = {};

//     for (final element in value) {
//       final e = convert(key, value);
//       payload.addAll({e.key: e.value});
//       response.addAll( convert(key, value) );
//     }
//     return response;
//   }

//   Map<K2, V2> _handleValue<K2, V2>(
//     dynamic key,
//     dynamic value,
//     MapEntry<K2, V2> Function(dynamic key, dynamic value) convert,
//   ) {}
// }
