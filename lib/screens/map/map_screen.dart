import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:get/get.dart';
import 'package:lam3ty/screens/map/controller/map_controller.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MyLocationController());

    return SafeArea(
        child: Scaffold(
            body: Obx(
      () => (controller.load.value
          ? const Center(child: CircularProgressIndicator())
          : GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                target: LatLng(controller.position!.latitude,
                    controller.position!.longitude),
                zoom: 16,
              ),
              onMapCreated: (GoogleMapController googleMapController) {
                controller.onInit();
                controller.markLocation();
              },
              markers: controller.marker,
            )),
    )));
  }
}
