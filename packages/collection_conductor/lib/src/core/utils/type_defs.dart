import 'package:collection_conductor/src/domain/exceptions/custom_exception.dart';
import 'package:result_dart/result_dart.dart';

typedef AsyncAnswer<T extends Object> = AsyncResult<T, CustomException>;
