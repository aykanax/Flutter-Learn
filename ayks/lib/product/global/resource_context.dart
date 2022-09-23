import 'package:ayks/303/reqrest_resource/model/resource.model.dart';

class ResourceContext {
  ResourceModel? model;

  void saveModel(ResourceModel? model) {
    this.model = model;
  }

  void clear() {
    model = null;
  }
}
