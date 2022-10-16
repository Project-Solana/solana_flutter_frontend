import 'dart:ui';
import 'package:geocoding/geocoding.dart';
import './provider_and_slot.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:geolocator/geolocator.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../bottom_sheet.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  bool login;
  _ProviderAndSlo(bool lol) {
    login = lol;
    setState(() {});
  }

  String address = "My Address";

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Fluttertoast.showToast(msg: 'Please keep your location on.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Fluttertoast.showToast(msg: 'Location Permission is denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      Fluttertoast.showToast(msg: 'Permission Denied Forever');
    }
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    var latitude = position.latitude;
    var longitude = position.longitude;
    // debugPrint("latitude: ${latitude}, longitude: ${longitude}");
    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(latitude, longitude);
      Placemark place = placemarks[0];
      setState(() {
        address = "${place.locality},${place.postalCode},${place.country}";
      });
    } catch (e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            GlassmorphicContainer(
              height: 80,
              width: double.infinity,
              borderRadius: 1,
              blur: 20,
              linearGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 102, 51, 152),
                  Color.fromARGB(255, 34, 49, 121),
                ],
                stops: [0.1, 1],
              ),
              borderGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 121, 83, 170),
                  Color.fromARGB(255, 64, 103, 224),
                ],
              ),
              border: 0.5,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: IconButton(
                          icon: Icon(
                            Icons.location_pin,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            _determinePosition();
                          },
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            RichText(
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                  text: 'Home',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: '\n',
                                ),
                                TextSpan(
                                  text: address,
                                  style: TextStyle(
                                      fontSize: 8, color: Colors.white),
                                )
                              ]),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 300,
                        margin: EdgeInsets.fromLTRB(5, 10, 10, 10),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(47, 52, 52, 52),
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TextField(
                                enabled: login,
                                style: TextStyle(
                                    decorationColor:
                                        Color.fromARGB(255, 73, 80, 87)),
                                cursorColor: Color.fromARGB(255, 73, 80, 87),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter your current location',
                                  labelStyle: GoogleFonts.quicksand(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 14,
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () => openBottomSheet(context),
                                    icon: Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ProviderAndSlot(),
          ],
        ),
      ),
    );
  }
}

void openBottomSheet(BuildContext ctx) {
  showModalBottomSheet(
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    context: ctx,
    builder: (ctx) {
      return const MyBottomSheet();
    },
  );
}
