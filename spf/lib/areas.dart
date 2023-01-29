// import 'dart:ffi';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'dart:io';
// import 'dart:async';
// import 'package:flutter/widgets.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:path/path.dart';
// import 'package:dio/dio.dart';

// class areaPage extends StatefulWidget {
//   const areaPage({super.key});

//   @override
//   State<areaPage> createState() => _areaPageState();
// }

// class _areaPageState extends State<areaPage> {
//   static const _initialCameraPosition = CameraPosition(
//     target: LatLng(37.773972, -122.431297),
//     zoom: 11.5,
//   );

//   GoogleMapController _googleMapController;
//   Marker _origin;
//   Marker _destination;

//   @override
//   Void dispose() {
//     _googleMapController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('Delivery Please...'),
//         actions: [
//           TextButton(
//             onPressed: () => _googleMapController.animateCamera(
//               CameraUpdate.newCameraPosition(
//                 CameraPosition(
//                     target: _origin.position, zoom: 14.5, tilt: 50.0),
//               ),
//             ),
//             style: TextButton.styleFrom(
//                 textStyle: const TextStyle(fontWeight: FontWeight.w600)),
//             child: const Text('ORIGIN'),
//           ),
//           TextButton(
//             onPressed: () => _googleMapController.animateCamera(
//               CameraUpdate.newCameraPosition(
//                 CameraPosition(
//                     target: _destination.position, zoom: 14.5, tilt: 50.0),
//               ),
//             ),
//             style: TextButton.styleFrom(
//                 textStyle: const TextStyle(fontWeight: FontWeight.w600)),
//             child: const Text('DESTINATION'),
//           ),
//         ],
//       ),
//       body: GoogleMap(
//         myLocationButtonEnabled: false,
//         zoomControlsEnabled: false,
//         initialCameraPosition: _initialCameraPosition,
//         onMapCreated: ((controller) => _googleMapController = controller),
//         markers: {
//           if (_origin != null) _origin,
//           if (_destination != null) _destination
//         },
//         onLongPress: _addMarker,
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.purple,
//         foregroundColor: Colors.pink,
//         onPressed: () => _googleMapController.animateCamera(
//             CameraUpdate.newCameraPosition(_initialCameraPosition)),
//         child: const Icon(Icons.thumb_up_alt),
//       ),
//     );
//   }

//   void _addMarker(LatLng pos) {
//     if (_origin == null || (_origin != null && _destination != null)) {
//       setState(() {
//         _origin = Marker(
//             markerId: const MarkerId("origin"),
//             infoWindow: const InfoWindow(title: 'Origin'),
//             icon: BitmapDescriptor.defaultMarkerWithHue(
//                 BitmapDescriptor.hueViolet),
//             position: pos);
//         _destination = null;
//       });
//     } else {
//       setState(() {
//         _destination = Marker(
//             markerId: const MarkerId('desitination'),
//             infoWindow: const InfoWindow(title: 'Destination'),
//             icon:
//                 BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRose),
//             position: pos);
//       });
//     }
//   }
// }
