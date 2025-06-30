import 'package:intl/intl.dart';

String formatCurrency(int amount) {
  final formatter = NumberFormat.currency(
    locale: 'vi_VN',
    symbol: '₫',
    decimalDigits: 0,
    customPattern: '¤#,##0',
  );
  return formatter.format(amount);
}