
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sims_ppob/data/datasource/network/api/api_client.dart';
import 'package:sims_ppob/data/datasource/network/api/network_source.dart';
import 'package:sims_ppob/data/repositories_impl/login_repository_impl.dart';
import 'package:sims_ppob/domain/repositories/login_repository.dart';
import 'package:sims_ppob/presentation/login/provider/login_form_validation.dart';
import 'package:sims_ppob/presentation/login/provider/login_provider.dart';


final sl = GetIt.instance;

Future<void> init() async {

  // Form validation
  sl.registerLazySingleton(() => LoginFormValidation());

  // Provider
  sl.registerFactory(() => LoginProvider(sl()));

  // Repo
  sl.registerLazySingleton<LoginRepository>(() => LoginRepositoryImpl());

  // DataSource
  sl.registerLazySingleton(() => ApiClient(sl()));
  sl.registerLazySingleton<NetworkSource>(() => NetworkSourceImpl(sl()));

  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

}