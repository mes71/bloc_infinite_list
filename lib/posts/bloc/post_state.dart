part of 'post_bloc.dart';

enum PostStatus { initial, success, failure }

class PostState extends Equatable {
  final bool hasReachedMax;
  final PostStatus status;
  final List<Post> posts;

  const PostState({
    this.hasReachedMax = false,
    this.status = PostStatus.initial,
    this.posts = const <Post>[],
  });

  PostState copyWith(
      {PostStatus? postStatus, List<Post>? posts, bool? hasReachedMax}) {
    return PostState(
        status: postStatus ?? status,
        posts: posts ?? this.posts,
        hasReachedMax: hasReachedMax ?? this.hasReachedMax);
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [hasReachedMax, status, posts];
}
