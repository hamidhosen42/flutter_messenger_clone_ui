// ignore_for_file: non_constant_identifier_names

import 'user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/greg.jpg',
);

// USERS
final User Afsana = User(
  id: 1,
  name: 'Afsana',
  imageUrl:
      'https://media.istockphoto.com/photos/philipsburg-sint-maarten-picture-id527760275?b=1&k=20&m=527760275&s=170667a&w=0&h=fmfg8DFLGWEsDju37oaQZEoevIrejiqia-8ITgcpgh8=',
);
final User james = User(
  id: 2,
  name: 'James',
  imageUrl: 'assets/images/james.jpg',
);
final User Sabrina = User(
  id: 3,
  name: 'Sabrina',
  imageUrl:
      'https://media.istockphoto.com/photos/philipsburg-sint-maarten-picture-id527760275?b=1&k=20&m=527760275&s=170667a&w=0&h=fmfg8DFLGWEsDju37oaQZEoevIrejiqia-8ITgcpgh8=',
);
final User Lubaba = User(
  id: 4,
  name: 'Lubaba',
  imageUrl:
      'https://media.istockphoto.com/photos/philipsburg-sint-maarten-picture-id527760275?b=1&k=20&m=527760275&s=170667a&w=0&h=fmfg8DFLGWEsDju37oaQZEoevIrejiqia-8ITgcpgh8=',
);
final User Saidul = User(
  id: 5,
  name: 'Saidul',
  imageUrl:
      'https://media.istockphoto.com/photos/philipsburg-sint-maarten-picture-id527760275?b=1&k=20&m=527760275&s=170667a&w=0&h=fmfg8DFLGWEsDju37oaQZEoevIrejiqia-8ITgcpgh8=',
);
final User Hamid = User(
  id: 6,
  name: 'Hamid',
  imageUrl:
      'https://media.istockphoto.com/photos/philipsburg-sint-maarten-picture-id527760275?b=1&k=20&m=527760275&s=170667a&w=0&h=fmfg8DFLGWEsDju37oaQZEoevIrejiqia-8ITgcpgh8=',
);
final User Rabbu = User(
  id: 7,
  name: 'Rabbu',
  imageUrl:
      'https://media.istockphoto.com/photos/philipsburg-sint-maarten-picture-id527760275?b=1&k=20&m=527760275&s=170667a&w=0&h=fmfg8DFLGWEsDju37oaQZEoevIrejiqia-8ITgcpgh8=',
);
final User Bushra = User(
  id: 8,
  name: 'Bushra',
  imageUrl:
      'https://media.istockphoto.com/photos/philipsburg-sint-maarten-picture-id527760275?b=1&k=20&m=527760275&s=170667a&w=0&h=fmfg8DFLGWEsDju37oaQZEoevIrejiqia-8ITgcpgh8=',
);
final User Jahedul = User(
  id: 9,
  name: 'Jahedul',
  imageUrl:
      'https://media.istockphoto.com/photos/philipsburg-sint-maarten-picture-id527760275?b=1&k=20&m=527760275&s=170667a&w=0&h=fmfg8DFLGWEsDju37oaQZEoevIrejiqia-8ITgcpgh8=',
);
final User Fahim = User(
  id: 10,
  name: 'Fahim',
  imageUrl:
      'https://media.istockphoto.com/photos/philipsburg-sint-maarten-picture-id527760275?b=1&k=20&m=527760275&s=170667a&w=0&h=fmfg8DFLGWEsDju37oaQZEoevIrejiqia-8ITgcpgh8=',
);

// FAVORITE CONTACTS
List<User> favorites = [
  Saidul,
  Rabbu,
  Lubaba,
  Sabrina,
  Afsana,
  Bushra,
  Jahedul,
  Fahim
];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: Jahedul,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Fahim,
    time: '7:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Bushra,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: Lubaba,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Sabrina,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: Hamid,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Rabbu,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Saidul,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Afsana,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];
