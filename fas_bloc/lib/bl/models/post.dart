import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';

part 'post.g.dart';

@freezed
abstract class Post implements _$Post {
  const factory Post({
    required String id,
    required String title,
    required String content,
    @Default(<Uri>[]) Iterable<Uri> images,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  const Post._();
}
