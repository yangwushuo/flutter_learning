/* 
  几种常见的Exception异常类
  DeferredLoadException	延迟加载错误
  FormatException	格式错误 
  IntegerDivisionByZeroException	整数除零错误
  IOException	IO 错误
  IsolateSpawnException	隔离产生错误
  TimeoutException	超时错误

  几种常见Error错误类 一般用在不可恢复，容易崩溃的情况
  AbstractClassInstantiationError	抽象类实例化错误
  ArgumentError	参数错误
  AssertionError	断言错误
  AsyncError	异步错误
  CastError	Cast 错误
  ConcurrentModificationError	并发修改错误
  CyclicInitializationError	周期初始错误
  FallThroughError	Fall Through 错误
  JsonUnsupportedObjectError	json 不支持错误
  NoSuchMethodError	没有这个方法错误
  NullThrownError	Null 错误错误
  OutOfMemoryError	内存溢出错误
  RemoteError	远程错误
  StackOverflowError	堆栈溢出错误
  StateError	状态错误
  UnimplementedError	未实现的错误
  UnsupportedError	不支持错误
 */

// 自定义一个异常类
class DioError implements Exception {
  DioError(this.message, this.type);

  final String message;
  final String type;

  @override
  String toString() {
    return 'DioError{message: $message, type: $type}';
  }
}

void main(List<String> args) {
  //  // Exception 对象
  // throw new FormatException('这是一个格式错误提示');

  // // Error 对象
  // throw new OutOfMemoryError();

  // // 任意对象
  // throw '这是一个异常';

  // try {
  // // throw new FormatException('这是一个格式错误提示');
  // throw new OutOfMemoryError();
  // } on OutOfMemoryError {
  //   print('没有内存了');
  // } catch (e) {
  //   print(e);
  // }

  // // 重新排除错误 也就是指定on处理完成之后再抛出一次错误
  // try {
  // throw new OutOfMemoryError();
  // } on OutOfMemoryError {
  //   print('没有内存了');
  //   rethrow;
  // } catch (e) {
  //   print(e);
  // }

  throw DioError("这是一个异常", '500');
}
