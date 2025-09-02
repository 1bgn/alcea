// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:asker/features/main_screen/domain/usecase/get_data_usecase.dart'
    as _i765;
import 'package:asker/features/main_screen/presentation/controller/main_screen_controller.dart'
    as _i396;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i765.GetDataUsecase>(() => _i765.GetDataUsecase());
    gh.lazySingleton<_i396.MainScreenController>(
      () => _i396.MainScreenController(gh<_i765.GetDataUsecase>()),
    );
    return this;
  }
}
