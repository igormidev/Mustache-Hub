import 'package:flutter/material.dart';

const int smallWidthBreakpoint = 550;
const int mediumWidthBreakpoint = 940;

extension ExtensionsScreenBreakpoint on BuildContext {
  T whenSize<T>({
    required final T compactSize,
    required final T mediumSize,
    required final T expandedSize,
  }) {
    switch (layoutWidth) {
      case LayoutWidth.compact:
        return compactSize;
      case LayoutWidth.medium:
        return mediumSize;
      case LayoutWidth.expanded:
        return expandedSize;
    }
  }

  T? whenSizeOrNull<T>({
    final T? compactSize,
    final T? mediumSize,
    final T? expandedSize,
  }) {
    switch (layoutWidth) {
      case LayoutWidth.compact:
        return compactSize;
      case LayoutWidth.medium:
        return mediumSize;
      case LayoutWidth.expanded:
        return expandedSize;
    }
  }

  /// Values are based on Material App 3 best layout pratices
  /// https://m3.material.io/foundations/layout/applying-layout/window-size-classes
  LayoutWidth get layoutWidth {
    final width = MediaQuery.of(this).size.width;
    if (width < smallWidthBreakpoint) {
      return LayoutWidth.compact;
    } else if (smallWidthBreakpoint < width && width < mediumWidthBreakpoint) {
      return LayoutWidth.medium;
    } else {
      return LayoutWidth.expanded;
    }
  }
}

enum LayoutWidth {
  compact,
  medium,
  expanded;
}
