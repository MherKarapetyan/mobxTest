import 'package:mobx_with_clean_archtecture/data/repository/repository.dart';
import 'package:mobx_with_clean_archtecture/data/storage/storage_util.dart';
import 'package:mobx_with_clean_archtecture/domain/repository/user_credential_repository.dart';
import 'package:mobx_with_clean_archtecture/internal/dependencies/storage_module.dart';

///
/// [RepositoryModule] class unites repositories.
///
/// `RepositoryModule().storageRepository` function creates `StorageModule`
/// instance and base on that creates `UserCredentialsRepository` instance.
///
class RepositoryModule {
  static UserCredentialsRepository? _repository;

  static UserCredentialsRepository? storageRepository() {
    StorageUtil? _storageUtil = StorageModule.storageUtil();
    if (_repository == null && _storageUtil != null)
      _repository = Repository(_storageUtil);

    return _repository;
  }
}
