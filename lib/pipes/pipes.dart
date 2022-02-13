class Pipes {
  static String nameCase(String text) {
    List<String> words = text.toLowerCase().split(' ');
    for (int a = 0; a < words.length; a++) {
      String w = words[a];
      if (words[a].length == 2) {
        words[a] = w[0].toLowerCase() + w.substring(1);
      } else {
        words[a] = w[0].toUpperCase() + w.substring(1);
      }
    }
    return words.join(' ');
  }

  static String textCase(String text) {
    String words = text[0].toUpperCase() + text.substring(1).toLowerCase();
    return words;
  }
}
