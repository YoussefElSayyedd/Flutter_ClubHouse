import 'package:quiz_app/models/room.dart';
import 'package:quiz_app/models/user.dart';

const User currentUser = User(
    firstName: "Youssef",
    lastName: "El Sayed",
    imageURL:
        "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=900&t=st=1680745815~exp=1680746415~hmac=c19f9862dfaee2faa91d4cbdba394f766c23e5ddb5b31ccf3596f2145785b468");

const List<User> allUsers = [
  User(
      firstName: "Ahmed",
      lastName: "El Sayed",
      imageURL:
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=900&t=st=1680745815~exp=1680746415~hmac=c19f9862dfaee2faa91d4cbdba394f766c23e5ddb5b31ccf3596f2145785b468"),
  User(
      firstName: "Youssef",
      lastName: "Ahmed",
      imageURL:
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=900&t=st=1680745815~exp=1680746415~hmac=c19f9862dfaee2faa91d4cbdba394f766c23e5ddb5b31ccf3596f2145785b468"),
  User(
      firstName: "Mohammed",
      lastName: "El Sayed",
      imageURL:
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=900&t=st=1680745815~exp=1680746415~hmac=c19f9862dfaee2faa91d4cbdba394f766c23e5ddb5b31ccf3596f2145785b468"),
  User(
      firstName: "Ali",
      lastName: "Mohammed",
      imageURL:
          "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
  User(
      firstName: "Ismail",
      lastName: "El Sayed",
      imageURL:
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=900&t=st=1680745815~exp=1680746415~hmac=c19f9862dfaee2faa91d4cbdba394f766c23e5ddb5b31ccf3596f2145785b468"),
  User(
      firstName: "Fadl",
      lastName: "El Sayed",
      imageURL:
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=900&t=st=1680745815~exp=1680746415~hmac=c19f9862dfaee2faa91d4cbdba394f766c23e5ddb5b31ccf3596f2145785b468"),
  User(
      firstName: "Khalid",
      lastName: "Ahmed",
      imageURL:
          "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
  User(
      firstName: "Mohammed",
      lastName: "Ali",
      imageURL:
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=900&t=st=1680745815~exp=1680746415~hmac=c19f9862dfaee2faa91d4cbdba394f766c23e5ddb5b31ccf3596f2145785b468"),
  User(
      firstName: "Youssef",
      lastName: "El Sayed",
      imageURL:
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=900&t=st=1680745815~exp=1680746415~hmac=c19f9862dfaee2faa91d4cbdba394f766c23e5ddb5b31ccf3596f2145785b468"),
  User(
      firstName: "Ahmed",
      lastName: "Ali",
      imageURL:
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=900&t=st=1680745815~exp=1680746415~hmac=c19f9862dfaee2faa91d4cbdba394f766c23e5ddb5b31ccf3596f2145785b468"),
  User(
      firstName: "Abdulsalam",
      lastName: "Ahmed",
      imageURL:
          "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?w=900&t=st=1680745815~exp=1680746415~hmac=c19f9862dfaee2faa91d4cbdba394f766c23e5ddb5b31ccf3596f2145785b468"),
  User(
      firstName: "Eslam",
      lastName: "Yasser",
      imageURL:
          "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
  User(
      firstName: "Youssef",
      lastName: "El Sayed",
      imageURL:
          "https://images.unsplash.com/photo-1534030347209-467a5b0ad3e6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
  User(
      firstName: "Marwan",
      lastName: "El Sayed",
      imageURL:
          "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?w=900&t=st=1680753575~exp=1680754175~hmac=ce5d0455eb8a7d1690680dc6d5b63ba902b1d60ab708855fb1d81c41ee7ca2d7"),
  User(
      firstName: "Naser",
      lastName: "Adel",
      imageURL:
          "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
];

final List<Room> roomList = [
  Room(
    club: "Flutter Time",
    name: "Special Team To Play With Flutter & Dart",
    speakers: (List<User>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(allUsers)..shuffle(),
    others: List<User>.from(allUsers)..shuffle(),
  ),
  Room(
    club: "Flutter Time",
    name: "Special Team To Play With Flutter & Dart",
    speakers: (List<User>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(allUsers)..shuffle(),
    others: List<User>.from(allUsers)..shuffle(),
  ),
  Room(
    club: "Flutter Time",
    name: "Special Team To Play With Flutter & Dart",
    speakers: (List<User>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(allUsers)..shuffle(),
    others: List<User>.from(allUsers)..shuffle(),
  ),
  Room(
    club: "Flutter Time",
    name: "Special Team To Play With Flutter & Dart",
    speakers: (List<User>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(allUsers)..shuffle(),
    others: List<User>.from(allUsers)..shuffle(),
  ),
];
