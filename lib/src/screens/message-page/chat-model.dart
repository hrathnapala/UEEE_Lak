class ChatModel {
  final String avatarUrl;
  final String name;
  final String datetime;
  final String message;
  final String adName;

  ChatModel(
      {this.avatarUrl, this.name, this.datetime, this.message, this.adName});

  static final List<ChatModel> dummyData = [
    ChatModel(
        avatarUrl: "https://randomuser.me/api/portraits/women/34.jpg",
        name: "Pradeepa",
        datetime: "20:18",
        message: "How about meeting tomorrow?",
        adName: "Apple iPhone X (Used)"),
    ChatModel(
        avatarUrl: "https://randomuser.me/api/portraits/women/49.jpg",
        name: "Renu",
        datetime: "19:22",
        message: "I love that idea, it's great",
        adName: "Toyota Corolla 121 (Used)"),
    ChatModel(
        avatarUrl: "https://randomuser.me/api/portraits/women/77.jpg",
        name: "Kamala",
        datetime: "14:34",
        message: "Do I come today to check it?",
        adName: "14 Perch Land"),
    ChatModel(
        avatarUrl: "https://randomuser.me/api/portraits/men/81.jpg",
        name: "Nimal",
        datetime: "11:05",
        message: "Available now?",
        adName: "Samsung Galaxy S10 (Brand new)"),
    ChatModel(
        avatarUrl: "https://randomuser.me/api/portraits/men/83.jpg",
        name: "Mahinda",
        datetime: "09:46",
        message: "What's your last price?",
        adName: "Mitsubishi Pajero 2016 (Used)"),
    ChatModel(
        avatarUrl: "https://randomuser.me/api/portraits/men/85.jpg",
        name: "Gotabaya",
        datetime: "08:15",
        message: "Is it brand new or used?",
        adName: "Portable Charger (Used)"),
    ChatModel(
        avatarUrl: "https://randomuser.me/api/portraits/women/34.jpg",
        name: "Pradeepa",
        datetime: "20:18",
        message: "How about meeting tomorrow?",
        adName: "Apple iPhone X (Used)"),
    ChatModel(
        avatarUrl: "https://randomuser.me/api/portraits/women/49.jpg",
        name: "Renu",
        datetime: "19:22",
        message: "I love that idea, it's great",
        adName: "Toyota Corolla 121 (Used)"),
    ChatModel(
        avatarUrl: "https://randomuser.me/api/portraits/women/77.jpg",
        name: "Kamala",
        datetime: "14:34",
        message: "Do I come today to check it?",
        adName: "14 Perch Land"),
    ChatModel(
        avatarUrl: "https://randomuser.me/api/portraits/men/81.jpg",
        name: "Nimal",
        datetime: "11:05",
        message: "Available now?",
        adName: "Samsung Galaxy S10 (Brand new)"),
    ChatModel(
        avatarUrl: "https://randomuser.me/api/portraits/men/83.jpg",
        name: "Mahinda",
        datetime: "09:46",
        message: "What's your last price?",
        adName: "Mitsubishi Pajero 2016 (Used)"),
    ChatModel(
        avatarUrl: "https://randomuser.me/api/portraits/men/85.jpg",
        name: "Gotabaya",
        datetime: "08:15",
        message: "Is it brand new or used?",
        adName: "Portable Charger (Used)")
  ];
}
