import 'package:chatgpt_course/models/models_model.dart';
import 'package:flutter/cupertino.dart';

import '../services/api_services.dart';

class ModelsProvider with ChangeNotifier {
  String currentModel = "dall-e-3";
  String get getCurrentModel {
    return currentModel;
  }

  void setCurrentModel(String newModel) {
    currentModel = newModel;
    notifyListeners();
  }

  List<ModelsModel> modelsList = [];

  List<ModelsModel> get getModelsList {
    return modelsList;
  }

  Future<List<ModelsModel>> getAllModels() async {
    modelsList = await ApiService.getModels();
    return modelsList;
  }
}
