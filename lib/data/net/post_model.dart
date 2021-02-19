class PostModel {
  final int id;
  final String title;
  final String excerpt;
  final String content;
  final int publishedAt;
  final int updatedAt;
  final String postId;
  final String postModified;
  final int categoryId;
  final String categoryName;
  final String image;
  final String url;

  PostModel({
    this.id,
    this.title,
    this.excerpt,
    this.content,
    this.publishedAt,
    this.updatedAt,
    this.postId,
    this.postModified,
    this.categoryId,
    this.categoryName,
    this.image,
    this.url,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json["id"],
      title: json["title"],
      content: json["content"],
      image: json["image"],
      categoryId: json["category_id"],
      categoryName: json["category_name"],
      excerpt: json["excerpt"],
      postId: json["post_id"],
      postModified: json["post_modified"],
      publishedAt: json["published_at"],
      updatedAt: json["updated_at"],
      url: json["url"],
    );
  }
}
