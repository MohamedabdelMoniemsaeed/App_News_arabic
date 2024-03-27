// /// status :
// /// totalResults
// /// articles :
// class Api {
//   Api({
//     this.status,
//     this.totalResults,
//     this.articles,
//   });

//   Api.fromJson(dynamic json) {
//     status = json['status'];
//     totalResults = json['totalResults'];
//     if (json['articles'] != null) {
//       articles = [];
//       json['articles'].forEach((v) {
//         articles?.add(Articles.fromJson(v));
//       });
//     }
//   }
//   String? status;
//   int? totalResults;
//   List<Articles>? articles;

//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['status'] = status;
//     map['totalResults'] = totalResults;
//     if (articles != null) {
//       map['articles'] = articles?.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }
// }

// /// source :
// /// author :
// /// title :
// /// description :
// /// url :
// /// image :
// /// publishedAt :
// /// content :

// class Articles {
//   Articles({
//     this.source,
//     this.author,
//     this.title,
//     this.description,
//     this.url,
//     this.image,
//     this.publishedAt,
//     this.content,
//   });

//   Articles.fromJson(dynamic json) {
//     source = json['source'] != null ? Source.fromJson(json['source']) : null;
//     author = json['author'];
//     title = json['title'];
//     description = json['description'];
//     url = json['url'];
//     image = json['image'];
//     publishedAt = json['publishedAt'];
//     content = json['content'];
//   }
//   Source? source;
//   String? author;
//   String? title;
//   dynamic description;
//   String? url;
//   dynamic image;
//   String? publishedAt;
//   dynamic content;

//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     if (source != null) {
//       map['source'] = source?.toJson();
//     }
//     map['author'] = author;
//     map['title'] = title;
//     map['description'] = description;
//     map['url'] = url;
//     map['image'] = image;
//     map['publishedAt'] = publishedAt;
//     map['content'] = content;
//     return map;
//   }
// }

// /// id : "google-news"
// /// name : "Google News"

// class Source {
//   Source({
//     this.id,
//     this.name,
//   });

//   Source.fromJson(dynamic json) {
//     id = json['id'];
//     name = json['name'];
//   }
//   String? id;
//   String? name;

//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = id;
//     map['name'] = name;
//     return map;
//   }
// }
