import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_custom.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/date_symbols.dart';
import 'package:intl/date_time_patterns.dart';
import 'package:intl/intl.dart';

void main() {
  test('Counter increments smoke test', () async {
    await initializeDateFormatting('en_US', null);
    final initialDateTimeSymbols = dateTimeSymbolMap();
    final en = initialDateTimeSymbols['en_US']!;
    final serialized = en.serializeToMap();
    serialized['STANDALONESHORTMONTHS'] = [
      ...serialized['STANDALONESHORTMONTHS'],
    ]..[8] = 'Sept';
    final modifiedEn = DateSymbols.deserializeFromMap(serialized);

    initializeDateFormattingCustom(
      locale: 'en_US',
      patterns: dateTimePatternMap()['en_US'],
      symbols: modifiedEn,
    );

    print(DateFormat.MMM('en_US').format(DateTime(2025, 9, 22)));
  });
}
