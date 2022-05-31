import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bluetooth_basic_mp/flutter_bluetooth_basic_mp.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_bluetooth_basic_mp');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });
}
