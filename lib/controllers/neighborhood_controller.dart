import 'package:ecokotam/models/neighborhood.dart';

class NeighborhoodController {
  final List<dynamic> _neighborhoodListJson = [
    {'name': 'Carvão', 'lat': -22.480671401342807, 'lng': -43.820535281309645},
    {'name': 'Vargem Grande', 'lat': -22.48963029665876, 'lng': -43.8188674678175},
    {'name': 'Santo Cristo', 'lat': -22.475118911977336, 'lng': -43.822375211815334},
    {'name': 'Muqueca', 'lat': -22.479909800867382, 'lng': -43.81756506047313},
    {'name': 'Morro do Gama', 'lat': -22.474270135558363, 'lng': -43.82506651528039},
    {'name': 'São João', 'lat': -22.47820342876462, 'lng': -43.8114931191991},
    {'name': 'Areal ', 'lat': -22.49238349334887, 'lng':  -43.83217716626787},
    {'name': 'Boa Sorte', 'lat': -22.48431574273925, 'lng': -43.83009315489269},
    {'name': 'Química ', 'lat': -22.461517599409163, 'lng': -43.81610700173268},
    {'name': 'Matadouro ', 'lat': -22.458616543599643, 'lng': -43.82777978057757},
    {'name': 'Oficinas Velhas', 'lat': -22.47682144938529, 'lng': -43.834596491656946},
  ];

  List<Neighborhood> createNeighborhoodList() {
    List<Neighborhood> list = _neighborhoodListJson.map(
      (item) => Neighborhood.fromJson(item),
    ).toList();

    return list;
  }
}
