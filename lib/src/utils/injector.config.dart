// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:super_baraem_kidergarten/src/core/network/dio_client.dart'
    as _i1008;
import 'package:super_baraem_kidergarten/src/main_app/auth/presentation/cubit/auth_cubit_cubit.dart'
    as _i187;
import 'package:super_baraem_kidergarten/src/main_app/presentation/pages/profile/presentation/cubit/profile_cubit.dart'
    as _i517;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i187.AuthCubitCubit>(() => _i187.AuthCubitCubit());
    gh.singleton<_i517.ProfileCubit>(() => _i517.ProfileCubit());
    gh.lazySingleton<_i1008.DioClient>(() => _i1008.DioClient());
    return this;
  }
}
