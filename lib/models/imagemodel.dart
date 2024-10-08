import 'dart:convert';

class ImageModel {
  UrlModel urls;
  String id;

  ImageModel({required this.urls, required this.id});

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(urls: UrlModel.fromJson(json['urls']), id: json['id']);
  }

  Map<String, dynamic> toJson() => {"urls": urls.toJson(), "id": id};

  factory ImageModel.decode(String str) =>
      ImageModel.fromJson(json.decode(str));
}

class UrlModel {
  final String raw;
  final String full;
  final String regular;
  final String small;
  final String thumb;

  UrlModel(
      {required this.raw,
      required this.full,
      required this.regular,
      required this.small,
      required this.thumb});

  factory UrlModel.fromJson(Map<String, dynamic> json) {
    return UrlModel(
        raw: json['raw'],
        full: json['full'],
        regular: json['regular'],
        small: json['small'],
        thumb: json['thumb']);
  }

  Map<String, dynamic> toJson() => {
        "raw": raw,
        "full": full,
        "regular": regular,
        "small": small,
        "thumb": thumb,
      };
}

//
// class ImageModel {
//   String? id;
//   String? slug;
//   AlternativeSlugs? alternativeSlugs;
//   String? createdAt;
//   String? updatedAt;
//   String? promotedAt;
//   int? width;
//   int? height;
//   String? color;
//   String? blurHash;
//   String? description;
//   String? altDescription;
//   List<Null>? breadcrumbs;
//   Urls? urls;
//   Links? links;
//   int? likes;
//   bool? likedByUser;
//   List<Null>? currentUserCollections;
//   String? sponsorship;
//   TopicSubmissions? topicSubmissions;
//   String? assetType;
//   User? user;
//
//   int? views;
//   int? downloads;
//
//   ImageModel(
//       {this.id,
//         this.slug,
//         this.alternativeSlugs,
//         this.createdAt,
//         this.updatedAt,
//         this.promotedAt,
//         this.width,
//         this.height,
//         this.color,
//         this.blurHash,
//         this.description,
//         this.altDescription,
//         this.breadcrumbs,
//         this.urls,
//         this.links,
//         this.likes,
//         this.likedByUser,
//         this.currentUserCollections,
//         this.sponsorship,
//         this.topicSubmissions,
//         this.assetType,
//         this.user,
//
//         this.views,
//         this.downloads});
//
//   ImageModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     slug = json['slug'];
//     alternativeSlugs = json['alternative_slugs'] != null
//         ? AlternativeSlugs.fromJson(json['alternative_slugs'])
//         : null;
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     promotedAt = json['promoted_at'];
//     width = json['width'];
//     height = json['height'];
//     color = json['color'];
//     blurHash = json['blur_hash'];
//     description = json['description'];
//     altDescription = json['alt_description'];
//
//     urls = json['urls'] != null ? Urls.fromJson(json['urls']) : null;
//     links = json['links'] != null ? Links.fromJson(json['links']) : null;
//     likes = json['likes'];
//     likedByUser = json['liked_by_user'];
//     sponsorship = json['sponsorship'];
//     topicSubmissions = json['topic_submissions'] != null
//         ? TopicSubmissions.fromJson(json['topic_submissions'])
//         : null;
//     assetType = json['asset_type'];
//     user = json['user'] != null ? User.fromJson(json['user']) : null;
//
//     views = json['views'];
//     downloads = json['downloads'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['slug'] = slug;
//     if (alternativeSlugs != null) {
//       data['alternative_slugs'] = alternativeSlugs!.toJson();
//     }
//     data['created_at'] = createdAt;
//     data['updated_at'] = updatedAt;
//     data['promoted_at'] = promotedAt;
//     data['width'] = width;
//     data['height'] = height;
//     data['color'] = color;
//     data['blur_hash'] = blurHash;
//     data['description'] = description;
//     data['alt_description'] = altDescription;
//
//     if (urls != null) {
//       data['urls'] = urls!.toJson();
//     }
//     if (links != null) {
//       data['links'] = links!.toJson();
//     }
//     data['likes'] = likes;
//     data['liked_by_user'] = likedByUser;
//
//     data['sponsorship'] = sponsorship;
//     if (topicSubmissions != null) {
//       data['topic_submissions'] = topicSubmissions!.toJson();
//     }
//     data['asset_type'] = assetType;
//     if (user != null) {
//       data['user'] = user!.toJson();
//     }
//
//     data['views'] = views;
//     data['downloads'] = downloads;
//     return data;
//   }
// }
//
// class AlternativeSlugs {
//   String? en;
//   String? es;
//   String? ja;
//   String? fr;
//   String? it;
//   String? ko;
//   String? de;
//   String? pt;
//
//   AlternativeSlugs(
//       {this.en, this.es, this.ja, this.fr, this.it, this.ko, this.de, this.pt});
//
//   AlternativeSlugs.fromJson(Map<String, dynamic> json) {
//     en = json['en'];
//     es = json['es'];
//     ja = json['ja'];
//     fr = json['fr'];
//     it = json['it'];
//     ko = json['ko'];
//     de = json['de'];
//     pt = json['pt'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['en'] = en;
//     data['es'] = es;
//     data['ja'] = ja;
//     data['fr'] = fr;
//     data['it'] = it;
//     data['ko'] = ko;
//     data['de'] = de;
//     data['pt'] = pt;
//     return data;
//   }
// }
//
// class Urls {
//   String? raw;
//   String? full;
//   String? regular;
//   String? small;
//   String? thumb;
//   String? smallS3;
//
//   Urls(
//       {this.raw,
//         this.full,
//         this.regular,
//         this.small,
//         this.thumb,
//         this.smallS3});
//
//   Urls.fromJson(Map<String, dynamic> json) {
//     raw = json['raw'];
//     full = json['full'];
//     regular = json['regular'];
//     small = json['small'];
//     thumb = json['thumb'];
//     smallS3 = json['small_s3'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['raw'] = raw;
//     data['full'] = full;
//     data['regular'] = regular;
//     data['small'] = small;
//     data['thumb'] = thumb;
//     data['small_s3'] = smallS3;
//     return data;
//   }
// }
//
// class Links {
//   String? self;
//   String? html;
//   String? download;
//   String? downloadLocation;
//
//   Links({this.self, this.html, this.download, this.downloadLocation});
//
//   Links.fromJson(Map<String, dynamic> json) {
//     self = json['self'];
//     html = json['html'];
//     download = json['download'];
//     downloadLocation = json['download_location'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['self'] = self;
//     data['html'] = html;
//     data['download'] = download;
//     data['download_location'] = downloadLocation;
//     return data;
//   }
// }
//
// class TopicSubmissions {
//   Archival? archival;
//
//   TopicSubmissions({this.archival});
//
//   TopicSubmissions.fromJson(Map<String, dynamic> json) {
//     archival = json['archival'] != null
//         ? Archival.fromJson(json['archival'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (archival != null) {
//       data['archival'] = archival!.toJson();
//     }
//     return data;
//   }
// }
//
// class Archival {
//   String? status;
//   String? approvedOn;
//
//   Archival({this.status, this.approvedOn});
//
//   Archival.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     approvedOn = json['approved_on'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['status'] = status;
//     data['approved_on'] = approvedOn;
//     return data;
//   }
// }
//
// class User {
//   String? id;
//   String? updatedAt;
//   String? username;
//   String? name;
//   String? firstName;
//   String? lastName;
//   String? twitterUsername;
//   String? portfolioUrl;
//   String? bio;
//   String? location;
//   Links? links;
//   ProfileImage? profileImage;
//   String? instagramUsername;
//   int? totalCollections;
//   int? totalLikes;
//   int? totalPhotos;
//   int? totalPromotedPhotos;
//   int? totalIllustrations;
//   int? totalPromotedIllustrations;
//   bool? acceptedTos;
//   bool? forHire;
//   Social? social;
//
//   User(
//       {this.id,
//         this.updatedAt,
//         this.username,
//         this.name,
//         this.firstName,
//         this.lastName,
//         this.twitterUsername,
//         this.portfolioUrl,
//         this.bio,
//         this.location,
//         this.links,
//         this.profileImage,
//         this.instagramUsername,
//         this.totalCollections,
//         this.totalLikes,
//         this.totalPhotos,
//         this.totalPromotedPhotos,
//         this.totalIllustrations,
//         this.totalPromotedIllustrations,
//         this.acceptedTos,
//         this.forHire,
//         this.social});
//
//   User.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     updatedAt = json['updated_at'];
//     username = json['username'];
//     name = json['name'];
//     firstName = json['first_name'];
//     lastName = json['last_name'];
//     twitterUsername = json['twitter_username'];
//     portfolioUrl = json['portfolio_url'];
//     bio = json['bio'];
//     location = json['location'];
//     links = json['links'] != null ? Links.fromJson(json['links']) : null;
//     profileImage = json['profile_image'] != null
//         ? ProfileImage.fromJson(json['profile_image'])
//         : null;
//     instagramUsername = json['instagram_username'];
//     totalCollections = json['total_collections'];
//     totalLikes = json['total_likes'];
//     totalPhotos = json['total_photos'];
//     totalPromotedPhotos = json['total_promoted_photos'];
//     totalIllustrations = json['total_illustrations'];
//     totalPromotedIllustrations = json['total_promoted_illustrations'];
//     acceptedTos = json['accepted_tos'];
//     forHire = json['for_hire'];
//     social =
//     json['social'] != null ? Social.fromJson(json['social']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['updated_at'] = updatedAt;
//     data['username'] = username;
//     data['name'] = name;
//     data['first_name'] = firstName;
//     data['last_name'] = lastName;
//     data['twitter_username'] = twitterUsername;
//     data['portfolio_url'] = portfolioUrl;
//     data['bio'] = bio;
//     data['location'] = location;
//     if (links != null) {
//       data['links'] = links!.toJson();
//     }
//     if (profileImage != null) {
//       data['profile_image'] = profileImage!.toJson();
//     }
//     data['instagram_username'] = instagramUsername;
//     data['total_collections'] = totalCollections;
//     data['total_likes'] = totalLikes;
//     data['total_photos'] = totalPhotos;
//     data['total_promoted_photos'] = totalPromotedPhotos;
//     data['total_illustrations'] = totalIllustrations;
//     data['total_promoted_illustrations'] = totalPromotedIllustrations;
//     data['accepted_tos'] = acceptedTos;
//     data['for_hire'] = forHire;
//     if (social != null) {
//       data['social'] = social!.toJson();
//     }
//     return data;
//   }
// }
//
// class ProfileImage {
//   String? small;
//   String? medium;
//   String? large;
//
//   ProfileImage({this.small, this.medium, this.large});
//
//   ProfileImage.fromJson(Map<String, dynamic> json) {
//     small = json['small'];
//     medium = json['medium'];
//     large = json['large'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['small'] = small;
//     data['medium'] = medium;
//     data['large'] = large;
//     return data;
//   }
// }
//
// class Social {
//   String? instagramUsername;
//   String? portfolioUrl;
//   String? twitterUsername;
//
//   Social(
//       {this.instagramUsername,
//         this.portfolioUrl,
//         this.twitterUsername,
//       });
//
//   Social.fromJson(Map<String, dynamic> json) {
//     instagramUsername = json['instagram_username'];
//     portfolioUrl = json['portfolio_url'];
//     twitterUsername = json['twitter_username'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['instagram_username'] = instagramUsername;
//     data['portfolio_url'] = portfolioUrl;
//     data['twitter_username'] = twitterUsername;
//     return data;
//   }
// }
//
//
//
