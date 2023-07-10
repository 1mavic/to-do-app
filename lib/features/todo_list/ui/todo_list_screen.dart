import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';
import 'package:ya_todo_app/config/flavors/banner_widget.dart';
import 'package:ya_todo_app/const/const_data.dart';
import 'package:ya_todo_app/core/domain/providers/overlay_service_provider.dart';
import 'package:ya_todo_app/core/domain/providers/sync_provider.dart';
import 'package:ya_todo_app/features/crete_edit_todo/ui/create_todo_screen.dart';
import 'package:ya_todo_app/features/todo_list/ui/widgets/list_body_widget.dart';
import 'package:ya_todo_app/generated/l10n.dart';
import 'package:ya_todo_app/navigation/navigator_inherit.dart';

/// key for main to-do list screen widget
final mainScreenKey = GlobalKey();

/// widget with all to do list
class TodoListWidget extends ConsumerStatefulWidget {
  /// widget with all to do list
  const TodoListWidget({
    super.key,
  });

  @override
  ConsumerState<TodoListWidget> createState() => TodoListWidgetState();
}

class TodoListWidgetState extends ConsumerState<TodoListWidget> {
  late ScrollController _controller;
  bool _expanded = false;
  bool _isTablet = false;
  String? _currentTaskId;
  @override
  void initState() {
    super.initState();
    _controller = ScrollController()
      ..addListener(() {
        setState(() {
          _expanded = _controller.hasClients &&
              _controller.offset > kExpandedHeight - kToolBarHeight - 10;
        });
      });
  }

  @override
  void didChangeDependencies() {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    _isTablet = orientation == Orientation.portrait
        ? size.width > 600
        : size.height > 600;
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void openTodo(String? newTodo) {
    if (_isTablet) {
      setState(() {
        _currentTaskId = newTodo;
      });
    } else {
      AppNavigator.of(context)?.openTaskScreen(newTodo);
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(syncProvider, (previous, next) {
      if (previous?.syncInProcess == false && next.syncInProcess == true) {
        ref.read(overlayProvider).showTextModal(S.of(context).syncData);
      } else if ((previous?.syncInProcess ?? false) == true &&
          next.syncInProcess == false) {
        ref.read(overlayProvider).removeOverlay();
      }
    });
    return FlavorBannerWidget(
      child: Scaffold(
        key: mainScreenKey,
        backgroundColor: Theme.of(context).extension<AppColors>()?.backPrimary,
        floatingActionButton: FloatingActionButton(
          onPressed: () => openTodo(null),
          backgroundColor: Theme.of(context).extension<AppColors>()?.blue,
          child: const Icon(Icons.add),
        ),
        body: _isTablet
            ? Row(
                children: [
                  Expanded(
                    child: TodoListBodyWidget(
                      controller: _controller,
                      expanded: _expanded,
                    ),
                  ),
                  Expanded(
                    child: CreateTodoScreen(
                      id: _currentTaskId,
                      fullScreen: false,
                      key: ValueKey<String?>(_currentTaskId),
                    ),
                  ),
                ],
              )
            : TodoListBodyWidget(
                controller: _controller,
                expanded: _expanded,
              ),
      ),
    );
  }
}
