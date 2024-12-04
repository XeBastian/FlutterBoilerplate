class StringFormatter {
  static String removeHyphens(String input) {
    // Remove hyphens from the input string
    String stringWithoutHyphens = input.replaceAll('-', '');

    // Capitalize the first word
    String formattedString = stringWithoutHyphens.isNotEmpty ? stringWithoutHyphens[0].toUpperCase() + stringWithoutHyphens.substring(1) : stringWithoutHyphens;

    return formattedString;
  }

  // Remove Brackets from strings
  static String bracketRemover(String input) {
    RegExp exp = RegExp(r'\[.*?\]');
    return input.replaceAll(exp, '').trim();
  }

  // Get the first name from a full name
  static String getFirstName(String fullName) {
    List<String> nameParts = fullName.split(' ');
    return nameParts[0];
  }
}
