import '../models/chat_model.dart';
import '../models/chats_message.dart';

List<ChatModel> chatList = [
  ChatModel(
      avatarURL: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
      userName: "Ximena Lopez",
      message: "Acabo de enviar el producto según lo acordado",
      time: "08:24 p. m.",
      countMessage: 3,
      isTyping: false),
  ChatModel(
      avatarURL: "https://images.unsplash.com/photo-1534180477871-5d6cc81f3920?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
      userName: "Erika Soto",
      message: "Iniciamos el curso de BlockChain el 9",
      time: "06:04 p. m.",
      countMessage: 0,
      isTyping: true),
  ChatModel(
      avatarURL: "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
      userName: "Luis Morán",
      message: "La sesión de revisión del PACE es mañana",
      time: "05:24 p. m.",
      countMessage: 1,
      isTyping: false),
  ChatModel(
      avatarURL: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
      userName: "Ximena Lopez",
      message: "Acabo de enviar el producto según lo acordado",
      time: "08:24 p. m.",
      countMessage: 3,
      isTyping: false),
  ChatModel(
      avatarURL: "https://images.unsplash.com/photo-1534180477871-5d6cc81f3920?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
      userName: "Erika Soto",
      message: "Iniciamos el curso de BlockChain el 9",
      time: "06:04 p. m.",
      countMessage: 5,
      isTyping: true),
  ChatModel(
      avatarURL: "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
      userName: "Luis Morán",
      message: "La sesión de revisión del PACE es mañana",
      time: "05:24 p. m.",
      countMessage: 0,
      isTyping: false),
];
List<ChatMessage> chatMessage = [
  ChatMessage(messageContent: "Hola, Juan cómo estas", messageType: "other"),
  ChatMessage(messageContent: "Hola, estoy muy bien aprendiendo Flutter", messageType: "me"),
  ChatMessage(messageContent: "Y tu que haces", messageType: "me"),
  ChatMessage(messageContent: "revisando nas cosas", messageType: "other"),
];