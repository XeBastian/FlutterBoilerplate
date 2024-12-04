class CurrencyFormatter {
  static String format({required double amount, String currency = "MK"}) {
    switch (currency) {
      case 'MK':
      case '\$':
        return _formatWithCommaSeparator(amount, currency);
      case '€':
        return _formatWithDotSeparator(amount, '€');
      default:
        // we will only use the default one of commas
        return _formatWithCommaSeparator(amount, currency);
    }
  }

  // format currencies with comma
  static String _formatWithCommaSeparator(double amount, String symbol) {
    // Convert the amount to a string with two decimal places
    String amountStr = amount.toStringAsFixed(2);
    // Split the amount into the integer and decimal parts
    List<String> parts = amountStr.split('.');
    String integerPart = parts[0];
    String decimalPart = parts[1];

    // Insert commas into the integer part
    String formattedIntegerPart = _addCommas(integerPart);

    //Whether we need to include the decimal part
    String result = '$symbol $formattedIntegerPart';
    if (decimalPart != '00') {
      result += '.$decimalPart';
    }

    // Return the formatted currency
    return result;
  }

  // format currencies with dot euro
  static String _formatWithDotSeparator(double amount, String symbol) {
    // Convert the amount to a string with two decimal places
    String amountStr = amount.toStringAsFixed(2);
    // Split the amount into the integer and decimal parts
    List<String> parts = amountStr.split('.');
    String integerPart = parts[0];
    String decimalPart = parts[1];

    // Insert dots into the integer part
    String formattedIntegerPart = _addDots(integerPart);

    // Determine if we need to include the decimal part
    String result = '$symbol $formattedIntegerPart';
    if (decimalPart != '00') {
      result += ',$decimalPart';
    }

    // Return the formatted currency
    return result;
  }

  //  add commas to the integer part
  static String _addCommas(String integerPart) {
    //   add commas regex
    RegExp regExp = RegExp(r'(\d)(?=(\d{3})+(?!\d))');
    // Replace with commas
    return integerPart.replaceAllMapped(regExp, (Match match) => '${match[1]},');
  }

  //   add dots to the integer part
  static String _addDots(String integerPart) {
    //  add dots
    RegExp regExp = RegExp(r'(\d)(?=(\d{3})+(?!\d))');
    // Replace with dots
    return integerPart.replaceAllMapped(regExp, (Match match) => '${match[1]}.');
  }
}
