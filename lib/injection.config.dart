// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:assignment/application/bonds/bond_cubit.dart' as _i702;
import 'package:assignment/core/di/register_module.dart' as _i716;
import 'package:assignment/domain/bond/bond_repository.dart' as _i331;
import 'package:assignment/infrastructure/bond/bond_repository.dart' as _i4;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i331.IBondRepository>(
      () => _i4.BondRepositoryImpl(gh<_i361.Dio>()),
    );
    gh.factory<_i702.BondCubit>(
      () => _i702.BondCubit(gh<_i331.IBondRepository>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i716.RegisterModule {}
