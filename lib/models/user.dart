class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 001,
      name: "Kelompok_4",
      username: "timfour",
      email: "timfour@email.com",
      profilePhoto:
          "https://production.listennotes.com/podcasts/kelompok-4-dIpLGg96M_U-sXnJSNM1B8A.1400x1400.jpg",
      phoneNumber: "085123456789",
    );
  }
}
