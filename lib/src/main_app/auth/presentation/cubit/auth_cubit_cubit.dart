import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:super_baraem_kidergarten/src/core/enums/genaric_enums.dart';
import 'package:super_baraem_kidergarten/src/core/local_db/local_db.dart';
import 'package:super_baraem_kidergarten/src/core/network/data_state.dart';
import 'package:super_baraem_kidergarten/src/main_app/auth/data/remote.dart';

part 'auth_cubit_cubit.freezed.dart';
part 'auth_cubit_state.dart';

@injectable
class AuthCubitCubit extends Cubit<AuthCubitState> {
  final AuthDataSource authDataSource = AuthDataSource();
  AuthCubitCubit() : super(const AuthCubitState.initial());
  loginEvent(String email, String password) async {
    emit(state.copyWith(remoteDataStatus: RemoteDataStatus.loading));
    final result = await authDataSource.loginApi(
      email: email,
      password: password,
    );
    if (result is DataFailed) {
      emit(
        state.copyWith(
          remoteDataStatus: RemoteDataStatus.error,
          dataFailed: result as DataFailed,
        ),
      );
      return;
    }
    if (result is DataSuccess) {
      LocalDatabase.saveLoginCredential(result.data!.results);
      emit(state.copyWith(remoteDataStatus: RemoteDataStatus.loaded));
      return;
    }
  }
}
