import 'dart:async';

import 'package:ya_todo_app/core/data/local_data_source/local_data_source_i.dart';
import 'package:ya_todo_app/core/domain/models/exceptions/local_db_exception.dart';
import 'package:ya_todo_app/core/domain/models/exceptions/unexpected_exception.dart';
import 'package:ya_todo_app/core/domain/models/responce_models/list_responce.dart';
import 'package:ya_todo_app/core/domain/models/todo.dart';
import 'package:ya_todo_app/core/domain/repository/todo_list_repository_i.dart';
import 'package:ya_todo_app/core/widgets/overlay_service.dart';

class DataServiceManager {
  DataServiceManager(
    this._localDb,
    this._listRepositoryI,
    this._overlayService,
  ) {
    _repositorySub = _listRepositoryI.responseStream.listen(
      (event) {},
      onError: (error) {},
      cancelOnError: false,
    );
  }
  final LocalDataSourceI _localDb;
  final ListRepositoryI _listRepositoryI;
  final OverlayService _overlayService;
  late final StreamSubscription<ListResponce> _repositorySub;

  List<Todo> getInitialData() {
    try {
      unawaited(_listRepositoryI.getList());
      return _localDb.getData();
    } on LocalDdException catch (e) {
      _overlayService.showErrorModal(e);
      return [];
    } catch (e, stackTrace) {
      _overlayService.showErrorModal(UnexpectedException(
        stackTrace: stackTrace.toString(),
        timeStamp: DateTime.now(),
      ));
      return [];
    }
  }

  // void _dataFromApi(ListResponce response) {
  //   if (response.list.isEmpty) return;
  //   final ids = response.list.map((e) => e.id).toList();
  //   final addList = state.where((element) => !ids.contains(element.id)).toList();
  //   for (final apiTodo in response.list) {
  //     final index = state.indexWhere((localTodo) => localTodo.id == apiTodo.id);
  //     if (index != -1) {
  //       if ((state[index].changedAt ?? 0) > (apiTodo.changedAt ?? 0)) {
  //         addList.add(state[index]);
  //       } else {
  //         addList.add(apiTodo);
  //       }
  //     } else {
  //       addList.add(apiTodo);
  //     }
  //   }
  //   addList.sort((a, b) => (a.createdAt ?? 0).compareTo(b.createdAt ?? 0));
  //   state = addList;
  //   unawaited(_localDb.saveData(state));
  //   unawaited(
  //     _listRepositoryI.updateList(
  //       todos: state,
  //       afterSync: true,
  //     ),
  //   );
  // }

  // void _errorFromApi(ApiException exc) {
  //   _overlayService.showErrorModal(exc);
  // }
}
