import 'package:intl/intl.dart';

String weight(dynamic quantity) {
  final String num = NumberFormat.simpleCurrency(name: 'Kgs').format(int.parse(quantity.toString()));
  final RegExp regex = RegExp(r'([.]*00)(?!.*\d)');

  return num.toString().replaceAll(regex, '');
}