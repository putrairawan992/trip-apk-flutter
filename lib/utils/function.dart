import 'package:intl/intl.dart';

String formatNumberToK(int number) {
  if (number >= 1000 && number < 1000000) {
    return '${(number / 1000).toStringAsFixed(1).replaceAll('.0', '')}K';
  } else if (number >= 1000000) {
    return '${(number / 1000000).toStringAsFixed(1).replaceAll('.0', '')}M';
  }
  return number.toString();
}

String formatToRupiah(int number) {
  final formatter = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);
  return formatter.format(number);
}
