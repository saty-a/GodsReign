import 'package:godreign/app/data/models/response/app_config_response.dart';
import 'package:godreign/app/data/values/urls.dart';
import 'package:godreign/base/base_reposiotry.dart';
import 'package:godreign/utils/helper/exception_handler.dart';
import 'package:godreign/utils/storage/storage_utils.dart';

class ConfigRepository extends BaseRepositry {
  saveAppConfig() async {
    final response = await controller.get(path: URLs.appConfig);
    if (!(response is APIException))
      Storage.setAppConfig(AppConfigResponse.fromJson(response).data);
  }
}
