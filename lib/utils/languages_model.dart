import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  // TODO: implement keys
  // Map<String, Map<String, String>> get keys => throw UnimplementedError();
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'message': 'What is your name?',
          'name': 'Muhammad Bilal',
        },
        'ur_PK': {
          'message': 'آپ کا نام کیا ہے؟',
          'name': 'محمد بلال',
        },
      };
}
