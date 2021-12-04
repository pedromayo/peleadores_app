import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:peleadores_app/app/data/models/fighter_model.dart';
import 'package:peleadores_app/app/data/repositories/fighter_repository.dart';

class HomeController extends GetxController {
  //repos
  // final _storageRepository = Get.find<StorageRepository>();
  //repos
  //final _userRepository = Get.find<UserRepository>();
  //repos houses
  final _fighterRepository = Get.find<FighterRepository>();

  //instancias
  //RequestToken _oRequestToken = RequestToken();

  //Variables
  //List<FighterModel> fighters = [];
  RxString nombre = RxString("");
  RxString alias = RxString("");

  RxInt _isSelectedIndex = RxInt(0);
  RxInt get isSelectedIndex => _isSelectedIndex;

  RxList<FighterModel> fighters = RxList<FighterModel>([]);

  //MARK:- funciones
  /* _loadStorage() async {
    _oRequestToken = await _storageRepository.getSession();

    //usando el repositoio user,para obtener la info del usuario
    await _userRepository.getInformation(
        token: _oRequestToken.requestToken ?? "",
        userId: _oRequestToken.idUser ?? 0);
    print(_oRequestToken.requestToken);
    print("toke:${_oRequestToken.idUser}");

    name.value = users[0].name ?? "";
    adress.value = users[0].address ?? "No tengo dirección";

    //aca ya tenemos el tokenm asi q hacemos la llamada al url
    _loadHouses();
  }*/

  @override
  void onInit() {
    // TODO: implement onInit
    //_loadStorage();
    _loadFighters();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  selectedIndex(int index) {
    isSelectedIndex.value = index;
  }

  _loadFighters() async {
    try {
      fighters.value = await _fighterRepository.getFighters();
      print(fighters);
      print("Peleadores: ${fighters.length}");
    } catch (e) {
      print(e.toString());
    }
  }
}
