class Info {
  String seed;
  String results;
  String page;
  String version;

  Info({
    required this.seed,
    required this.results,
    required this.page,
    required this.version,
  });

  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(
      seed: json['seed'],
      results: json['results'].toString(),
      page: json['page'].toString(),
      version: json['version'],
    );
  }
}
