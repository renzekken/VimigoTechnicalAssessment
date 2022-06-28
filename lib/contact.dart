class Contact {
  final String name;
  final String date;

  const Contact({
    required this.name,
    required this.date
  });

  static Contact fromJson(json) => Contact(
    name: json['name'],
    date: json['date']
  );
}