import 'package:mobx_with_clean_archtecture/data/repository/repository.dart';
import 'package:mobx_with_clean_archtecture/data/storage/storage_util.dart';
import 'package:mobx_with_clean_archtecture/domain/repository/user_credential_repository.dart';
import 'package:mobx_with_clean_archtecture/internal/dependencies/storage_module.dart';

class RepositoryModule {
  static UserCredentialsRepository? _repository;

  static UserCredentialsRepository? dayRepository() {
    StorageUtil? _storageUtil = StorageModule.storageUtil();
    if (_repository == null && _storageUtil != null)
      _repository = Repository(_storageUtil);

    return _repository;
  }
}
