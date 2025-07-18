class NewsModel {
    final Source source;
    final String? author;
    final String title;
    final String description;
    final String url;
    final String urlToImage;
    final String publishedAt;
    final String content;

    NewsModel({
        required this.source,
        this.author,
        required this.title,
        required this.description,
        required this.url,
        required this.urlToImage,
        required this.publishedAt,
        required this.content,
    });

    factory NewsModel.fromJson(Map<String, dynamic> json) {
        return NewsModel(
            source: Source.fromJson(json['source']),
            author: json['author'],
            title: json['title'],
            description: json['description'],
            url: json['url'],
            urlToImage: json['urlToImage'],
            publishedAt: json['publishedAt'],
            content: json['content'],
        );
    }

    Map<String, dynamic> toJson() {
        return {
            'source': source.toJson(),
            'author': author,
            'title': title,
            'description': description,
            'url': url,
            'urlToImage': urlToImage,
            'publishedAt': publishedAt,
            'content': content,
        };
    }
}

class Source {
    final String? id;
    final String name;

    Source({
        this.id,
        required this.name,
    });

    factory Source.fromJson(Map<String, dynamic> json) {
        return Source(
            id: json['id'],
            name: json['name'],
        );
    }

    Map<String, dynamic> toJson() {
        return {
            'id': id,
            'name': name,
        };
    }
}
