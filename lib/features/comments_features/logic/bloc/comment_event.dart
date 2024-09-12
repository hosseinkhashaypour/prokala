part of 'comment_bloc.dart';

@immutable
abstract class CommentEvent {}

class CallShowCommentsEvent extends CommentEvent {
  final String productId;
  CallShowCommentsEvent(this.productId);
}