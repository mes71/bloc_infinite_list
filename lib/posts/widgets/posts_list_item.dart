import 'package:bloc_infinite_list/posts/models/Post.dart';
import 'package:flutter/material.dart';

class PostsListItem extends StatelessWidget {
  final Post post;

  const PostsListItem({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Material(
      child: ListTile(
        leading: Text(
          '${post.id}',
          style: textTheme.bodySmall,
        ),
        title: Text(post.title),
        isThreeLine: true,
        subtitle: Text(post.body),
        dense: true,
      ),
    );
  }
}
