import 'package:arcore_test/Screens/ar_glb.dart';
import 'package:arcore_test/Screens/assets_object.dart';
import 'package:arcore_test/Screens/augmented_faces.dart';
import 'package:arcore_test/Screens/augmented_images.dart';
import 'package:arcore_test/Screens/auto_detect_plane.dart';
import 'package:arcore_test/Screens/custom_object.dart';
import 'package:arcore_test/Screens/hello_world.dart';
import 'package:arcore_test/Screens/image_object.dart';
import 'package:arcore_test/Screens/matri_3d.dart';
import 'package:arcore_test/Screens/multiple_augmented_images.dart';
import 'package:arcore_test/Screens/remote_object.dart';
import 'package:arcore_test/Screens/runtime_materials.dart';
import 'package:arcore_test/Screens/texture_and_rotation.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ArCore Demo'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HelloWorld()));
            },
            title: Text("Hello World"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ImageObjectScreen()));
            },
            title: Text("Image"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AugmentedPage()));
            },
            title: Text("AugmentedPage"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MultipleAugmentedImagesPage()));
            },
            title: Text("Multiple augmented images"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CustomObject()));
            },
            title: Text("Custom Anchored Object with onTap"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RuntimeMaterials()));
            },
            title: Text("Change Materials Property in runtime"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ObjectWithTextureAndRotation()));
            },
            title: Text("Custom object with texture and rotation listener "),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AutoDetectPlane()));
            },
            title: Text("Plane detect handler"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Matrix3DRenderingPage()));
            },
            title: Text("3D Matrix"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AssetsObject()));
            },
            title: Text("Custom sfb object"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RemoteObject()));
            },
            title: Text("Remote object"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AugmentedFacesScreen()));
            },
            title: Text("Augmented Faces"),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LocalAndWebObjectsWidget()));
            },
            title: Text("Local And Web Objects Widget"),
          ),
        ],
      ),
    );
  }
}
