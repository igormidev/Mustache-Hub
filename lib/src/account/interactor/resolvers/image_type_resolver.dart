class ImageTypeResolver {
  /// Returns `null` if image does not math any type
  static ImageType? defineType(String pathName) {
    final isJpeg = pathName.endsWith('.jpeg');
    final isJpg = pathName.endsWith('.jpg');
    final isPng = pathName.endsWith('.png');

    if (isJpg) return ImageType.jpg;
    if (isPng) return ImageType.png;
    if (isJpeg) return ImageType.jpeg;
    return null;
  }
}

enum ImageType {
  jpg('image/jpg'),
  jpeg('image/jpeg'),
  png('image/png');

  final String contentType;

  const ImageType(this.contentType);
}
