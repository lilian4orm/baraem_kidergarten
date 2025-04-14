import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:super_baraem_kidergarten/src/core/enums/genaric_enums.dart';

import '../../network/data_state.dart';

part 'genaric_cubit.freezed.dart';
part 'genaric_state.dart';

class GenaricCubit extends Cubit<GenaricState> {
  GenaricCubit() : super(const GenaricState.initial());

  void action(Function() action2) async {
    emit(state.copyWith(blocDatasStatus: RemoteDataStatus.loading));
    final result = await action2();
    if (result is DataFailed) {
      emit(
        state.copyWith(
          blocDatasStatus: RemoteDataStatus.error,
          dataState: result,
        ),
      );
      return;
    }
    emit(state.copyWith(blocDatasStatus: RemoteDataStatus.loaded));
  }
}
