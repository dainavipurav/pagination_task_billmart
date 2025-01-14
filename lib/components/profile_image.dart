import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pagination_task/utils/enums.dart';

class ProfileImage extends StatelessWidget {
  final String? image;
  final ImageLoadType imageLoadType;
  final double size;
  const ProfileImage({
    super.key,
    this.image,
    this.imageLoadType = ImageLoadType.network,
    this.size = 32,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (image == null || image!.trim().isEmpty) {
      return _defaultProfileImage(theme);
    }

    return _getImage(theme);
  }

  Widget _defaultProfileImage(ThemeData theme) {
    return CircleAvatar(
      backgroundColor: theme.colorScheme.onSurfaceVariant,
      radius: size,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Icon(
          Icons.person_rounded,
          size: 32,
        ),
      ),
    );
  }

  Widget _getImage(ThemeData theme) {
    return CircleAvatar(
      backgroundColor: theme.colorScheme.onSurfaceVariant,
      radius: size,
      backgroundImage: _getImageByLoadType(),
    );
  }

  ImageProvider<Object>? _getImageByLoadType() {
    switch (imageLoadType) {
      case ImageLoadType.asset:
        return AssetImage(image!);
      case ImageLoadType.network:
        return CachedNetworkImageProvider(image!);
    }
  }
}
