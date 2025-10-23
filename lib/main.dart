import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/date_symbols.dart';
import 'package:intl/intl.dart';
import 'package:intl/src/date_format_internal.dart';

Future<void> main() async {
  await initializeDateFormatting('en', null);

  dateTimeSymbols = dateTimeSymbols as Map<String, DateSymbols>;

  print(DateFormat.MMM().format(DateTime(2025, 10, 22)));
}
