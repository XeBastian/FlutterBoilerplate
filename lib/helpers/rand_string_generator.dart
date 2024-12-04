import 'dart:math';

class RandomStringGenerator {
  static String generateRandomNumericString() {
    final random = Random();
    const numericChars = '_0123456789AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz-';
    final StringBuffer buffer = StringBuffer();

    for (int i = 0; i < 33; i++) {
      final randomIndex = random.nextInt(numericChars.length);
      buffer.write(numericChars[randomIndex]);
    }

    return buffer.toString();
  }
}
