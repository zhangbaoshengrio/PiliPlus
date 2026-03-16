import 'package:flutter/services.dart';

abstract final class FontUtils {
  static const _channel = MethodChannel('PiliPlus');

  static const systemFontFamily = 'SystemFont';
  static const systemFontHans = 'SystemFontHans';
  static const systemFontHant = 'SystemFontHant';

  /// fontFamilyFallback to add to ThemeData when system font is enabled
  static const fontFamilyFallback = [systemFontHans, systemFontHant];

  static Future<bool> loadSystemFont() async {
    try {
      final data = await _channel.invokeMapMethod<String, dynamic>('getSystemFontData');
      if (data == null || data.isEmpty) return false;

      Future<void> registerFamily(
        String family,
        Uint8List? regular,
        Uint8List? bold,
      ) async {
        if (regular == null || regular.isEmpty) return;
        final loader = FontLoader(family)
          ..addFont(Future.value(ByteData.sublistView(regular)));
        if (bold != null && bold.isNotEmpty) {
          loader.addFont(Future.value(ByteData.sublistView(bold)));
        }
        await loader.load();
      }

      Uint8List? _get(String key) {
        final v = data[key];
        return v is Uint8List && v.isNotEmpty ? v : null;
      }

      await registerFamily(systemFontFamily, _get('regular'), _get('regularBold'));
      await registerFamily(systemFontHans, _get('hans'), _get('hansBold'));
      await registerFamily(systemFontHant, _get('hant'), _get('hantBold'));

      return true;
    } catch (_) {
      return false;
    }
  }
}
