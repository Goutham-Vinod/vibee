part of 'chat_screen_bloc.dart';

@freezed
class ChatScreenEvent with _$ChatScreenEvent {
  const factory ChatScreenEvent.initializeScreen({
    required String chatId,
  }) = _InitializeScreen;
  const factory ChatScreenEvent.sendMessage({
    String? message,
  }) = _SendMessage;
}
