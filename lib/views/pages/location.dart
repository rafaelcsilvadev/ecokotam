import 'dart:async';

import 'package:ecokotam/controllers/neighborhood_controller.dart';
import 'package:ecokotam/models/neighborhood.dart';
import 'package:ecokotam/views/assets/images/images.dart';
import 'package:ecokotam/views/widgets/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../widgets/app_bar_ecokotam.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  GoogleMapController? mapController;

  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;
  late List<Neighborhood> _neighborhoodList;
  late Neighborhood? _selectedLocation;

  final NeighborhoodController _neighborhoodController =
      Get.find<NeighborhoodController>();

  void addCustomIcon() {
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(), ImagesEcokotam.location)
        .then(
      (icon) {
        setState(() {
          markerIcon = icon;
        });
      },
    );
  }

  void changeMapCamera(Neighborhood location) async {
    print('passou');
    LatLng newlatlang = LatLng(location.lat, location.lng);
    var controllerFuture = await _controller.future;
    controllerFuture.animateCamera(
      CameraUpdate.newCameraPosition(
          CameraPosition(target: newlatlang, zoom: 17)),
    );
    setState(() {});
  }

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-22.480297, -43.820636),
    zoom: 17,
  );

  @override
  void initState() {
    _neighborhoodList = _neighborhoodController.createNeighborhoodList();
    addCustomIcon();
    _selectedLocation = null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarEcokotam(
          title: 'Localização',
          hasLeading: true,
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Stack(
              alignment: Alignment.center,
              children: [
                GoogleMap(
                  markers: _selectedLocation != null ? {
                     Marker(
                      markerId: const MarkerId("marker1"),
                      position:
                          LatLng(_selectedLocation!.lat, _selectedLocation!.lng),
                      icon: markerIcon,
                    ),
                  } : {},
                  mapType: MapType.normal,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
                Positioned(
                  top: 0,
                  child: Container(
                    color: Colors.transparent,
                    margin: const EdgeInsets.only(top: 10),
                    width: constraints.maxWidth * 0.8,
                    height: 50,
                    child: DropdownEcokotam(
                        width: constraints.maxWidth * 0.9,
                        items: _neighborhoodList,
                        onTap: (item) {
                          setState(() {
                            _selectedLocation = item;
                          });
                          changeMapCamera(item);
                        }),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
