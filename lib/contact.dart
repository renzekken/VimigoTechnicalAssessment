class Contact {
  //final String name;
  //final String date;
  final String user;
  final String phone;
  final String checkIn;

  const Contact({
    //required this.name,
    //required this.date
    required this.user,
    required this.phone,
    required this.checkIn

  });

  static Contact fromJson(json) => Contact(
    //name: json['name'],
    //date: json['date']
    user: json['user'],
    phone: json['phone'],
    checkIn: json['checkIn']
  );
}