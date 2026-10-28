import 'package:intl/intl.dart';

class Formatters {
  static String currency(double amount) => NumberFormat.currency(symbol: '$').format(amount);
  static String date(DateTime date) => DateFormat('MMM dd, yyyy').format(date);
}
