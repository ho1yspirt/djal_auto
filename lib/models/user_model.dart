class User {
  final String fullName;
  final String groupNumber;
  final String phoneNumber;
  final bool isStudent;
  final bool isAdmin;
  final bool isAutoInstructor;

  User(
    this.fullName,
    this.groupNumber,
    this.phoneNumber,
    this.isStudent,
    this.isAdmin,
    this.isAutoInstructor,
  );

  Map<String, dynamic> toJson() => {
        'fullName': fullName,
        'groupNumber': fullName,
        'phoneNumber': fullName,
        'isStudent': fullName,
        'isAdmin': fullName,
        'isAutoInstructor': fullName,
      };
}
