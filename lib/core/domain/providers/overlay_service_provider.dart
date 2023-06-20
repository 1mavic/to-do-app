import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/core/widgets/overlay_service.dart';

/// provider for overlay service
final overlayProvider = Provider<OverlayService>((ref) => OverlayService());
