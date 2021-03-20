import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluster/fluster.dart';

void main() {
  const MethodChannel channel = MethodChannel('fluster');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Fluster.platformVersion, '42');
  });
}
