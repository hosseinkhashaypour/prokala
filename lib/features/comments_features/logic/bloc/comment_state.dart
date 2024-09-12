part of 'comment_bloc.dart';

@immutable
abstract class CommentState {}

class CommentInitial extends CommentState {}

class CommentLoadingState extends CommentState {

}

class CommentCompletedState extends CommentState {
  final CommentModel commentModel;
  CommentCompletedState(this.commentModel);
}

class CommentErrorState extends CommentState {
  final ErrorMessageClass error;
  CommentErrorState({ required this.error});
}